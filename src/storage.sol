// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    // Déclaration d'une variable pour stocker un entier
    uint256 private storedValue;

    // Événement déclenché lorsque la valeur est mise à jour
    event ValueUpdated(uint256 oldValue, uint256 newValue);

    // Fonction pour stocker une nouvelle valeur
    function setValue(uint256 _value) public {
        uint256 oldValue = storedValue;
        storedValue = _value;
        emit ValueUpdated(oldValue, _value); // Émet l'événement
    }

    // Fonction pour lire la valeur stockée
    function getValue() public view returns (uint256) {
        return storedValue;
    }
}
