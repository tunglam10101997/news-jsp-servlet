package com.hoclaptrinh.mapper;

import java.sql.ResultSet;

public interface RowMapper {
public NewModel mapRow(ResultSet resultSet);
}
