<?php

namespace Roteamento\Infra;

use Iterator;

class Collection implements Iterator {
	
	private $items = array();
	
	public function addItem($obj, $key = null) {
		if ($key == null) {
			$this->items[] = $obj;
			return;
		}
		if (isset($this->items[$key])) {
			throw new \Exception("Key $key already in use.");
		}
		$this->items[$key] = $obj;
	}
	
	public function deleteItem($key) {
		if (!isset($this->items[$key])) {
			throw new \Exception("Invalid key $key.");
		}
		unset($this->items[$key]);
	}
	
	public function getItem($key) {
		if (!isset($this->items[$key])) {
			throw new \Exception("Invalid key $key.");
		}
		return $this->items[$key];
	}
	
	public function keys() {
		return array_keys($this->items);
	}
	
	public function length() {
		return count($this->items);
	}
	
	public function keyExists($key) {
		return isset($this->items[$key]);
	}
	
	public function current() {
		return current($this->items);
	}
	
	public function key() {
		return key($this->items);
	}
	
	public function next() {
		next($this->items);
	}
	
	public function rewind() {
		reset($this->items);
	}
	
	public function valid(): bool {
		return current($this->items) !== false;
	}
}