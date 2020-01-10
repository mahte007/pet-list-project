package mik.prog4.zh1.service;

import java.util.List;
import java.util.Optional;

import mik.prog4.zh1.entity.Pet;
import mik.prog4.zh1.repository.PetRepository;

public class PetService {

	private final PetRepository petRepository;

	public PetService() {
		this.petRepository = PetRepository.getInstance();
	}

	public Pet save(Pet pet) {
		if (pet.getId() == null) {
			return this.petRepository.save(pet);
		} else {
			return this.petRepository.update(pet);
		}
	}

	public List<Pet> findAll() {
		return this.petRepository.listAll();
	}

	public Optional<Pet> findById(Long id) {
		return this.petRepository.findById(id);
	}

	public int getGlobalIdentifier(Pet pet) {
		return pet.hashCode();
	}

	public boolean deletePet(Long id) {
		return this.petRepository.delete(id);
	}

}
