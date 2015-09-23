/**
 * 这是产品模块模块的service部份
 * 这个模块下的所的dao和service实现在这里创建
 * 业务分布的原则
 * 1、所有与HQL与SQL有关的查询在DAO里面实现
 * 2、Service调用DAO实现业务
 * 3、DAO中有一个ISQLQuery iSQLQuery;工具类提供了SQL映射为Entity、OV的查询方法，并且提供了分页的功能。复杂的功能用SQL实现
 * 
 */
/**
 * @author system
 * Eshore Technology Co., Ltd.
 *
 */