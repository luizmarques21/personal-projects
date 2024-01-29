import React from "react";
import useNavigation from "../../hooks/useNavigation";
import {Container} from "../../containers/Container";
import {Title} from "../../components/ui/Title";
import {EventForm} from "../../components/events/EventForm";
import {useCreateEvent} from "../../mutations/useCreateEvent";

export const EventCreateContainer: React.FC<object> = () => {
    const {go} = useNavigation();
    const createEvent = useCreateEvent();

    async function handleOnCreate(data: EventProperties) {
        try {
            await createEvent.mutateAsync(data);
            go('/events')
        } catch (e) {
            console.log(e)
        }
    }

    return <Container>
        <Title className='text-center mb-5'>Cadastrar novo evento</Title>

        <EventForm onSubmit={handleOnCreate} action="Registrar"/>
    </Container>
};
