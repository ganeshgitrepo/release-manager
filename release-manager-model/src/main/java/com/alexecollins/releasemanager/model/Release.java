package com.alexecollins.releasemanager.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * @author alexec (alex.e.c@gmail.com)
 */
@Entity
public class Release {
	@Id
	@GeneratedValue
	private Long id;
	@Column(length = 64, nullable = false, unique = true)
	private String name;
	private SortedSet<Component> components = new TreeSet<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean addComponent(Component component) {
		return components.add(component);
	}

	public Set<Component> getComponents() {
		return components;
	}
}
