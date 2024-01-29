import React, {useEffect, useState} from "react";
import {Link} from "react-router-dom";
import {Input} from "../../components/form/Input";
import {Button} from "../../components/ui/Button";
import {Container} from "../../containers/Container";
import useNavigation from "../../hooks/useNavigation";
import {Title} from "../../components/ui/Title";
import {useLogin} from "../../mutations/useLogin";
import {useAuthContext} from "../../hooks/useAuthContext";
import {useMyForm} from "../../hooks/useForm";

type Credentials = {
    email: string;
    password: string;
}

export const Login: React.FC<object> = () => {
    const {go} = useNavigation();
    const authed = useAuthContext();
    const [loading, setLoading] = useState(false);
    const {setAutoErrors, register, handleSubmit, formState: {errors}} = useMyForm<Credentials>();
    const login = useLogin();

    useEffect(() => {
        if (authed) {
            go('/events');
        }
    }, [authed]);

    async function handleOnLogin(credentials: Credentials) {
        setLoading(true);
        try {
            await login.mutateAsync({
                ...credentials,
                remember: true,
            });
            go('/events');
        } catch (e: any) {
            setAutoErrors(e.response.data.errors);
        }
        setLoading(false);
    }

    return <Container className="flex flex-col justify-center items-center">
        <form className="w-full" onSubmit={handleSubmit(handleOnLogin)}>
            <Title type="super" className="mb-10 text-center">
                Calendário de Eventos TokenLab
            </Title>
            <div className="space-y-8">
                <div>
                    <Input
                        name="email"
                        label="Email"
                        error={errors.email}
                        inputProps={register("email", {required: true})}
                    />
                </div>
                <div>
                    <Input
                        name="password"
                        label="Senha"
                        error={errors.password}
                        inputProps={{
                            ...register("password", {required: true}),
                            type: 'password',
                        }}
                    />
                </div>
                <div className="pt-4">
                    <Button className="w-full" loading={loading}>
                        Entrar
                    </Button>
                </div>
                <div className="mt-8 px-4 text-center">
                    <Link to="/register" className="w-full text-gray-500">
                        <span>Ainda não possui uma conta?</span>
                        <span className="ml-1 text-blue-500 hover:underline">Registre-se aqui</span>
                    </Link>
                </div>
            </div>
        </form>
    </Container>
};
