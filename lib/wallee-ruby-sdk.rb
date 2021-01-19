=begin
The wallee API allows an easy interaction with the wallee web service.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'wallee-ruby-sdk/api_client'
require 'wallee-ruby-sdk/api_error'
require 'wallee-ruby-sdk/version'
require 'wallee-ruby-sdk/configuration'

# Models
require 'wallee-ruby-sdk/models/abstract_account_update'
require 'wallee-ruby-sdk/models/abstract_application_user_update'
require 'wallee-ruby-sdk/models/abstract_customer_active'
require 'wallee-ruby-sdk/models/abstract_customer_address_active'
require 'wallee-ruby-sdk/models/abstract_customer_comment_active'
require 'wallee-ruby-sdk/models/abstract_debt_collection_case_update'
require 'wallee-ruby-sdk/models/abstract_human_user_update'
require 'wallee-ruby-sdk/models/abstract_payment_link_update'
require 'wallee-ruby-sdk/models/abstract_refund_comment_active'
require 'wallee-ruby-sdk/models/abstract_shopify_subscription_product_update'
require 'wallee-ruby-sdk/models/abstract_space_update'
require 'wallee-ruby-sdk/models/abstract_subscriber_update'
require 'wallee-ruby-sdk/models/abstract_subscription_affiliate_update'
require 'wallee-ruby-sdk/models/abstract_subscription_metric_update'
require 'wallee-ruby-sdk/models/abstract_subscription_product_active'
require 'wallee-ruby-sdk/models/abstract_token_update'
require 'wallee-ruby-sdk/models/abstract_transaction_comment_active'
require 'wallee-ruby-sdk/models/abstract_transaction_invoice_comment_active'
require 'wallee-ruby-sdk/models/abstract_transaction_pending'
require 'wallee-ruby-sdk/models/abstract_webhook_listener_update'
require 'wallee-ruby-sdk/models/abstract_webhook_url_update'
require 'wallee-ruby-sdk/models/account'
require 'wallee-ruby-sdk/models/account_state'
require 'wallee-ruby-sdk/models/account_type'
require 'wallee-ruby-sdk/models/address'
require 'wallee-ruby-sdk/models/address_create'
require 'wallee-ruby-sdk/models/bank_account'
require 'wallee-ruby-sdk/models/bank_account_environment'
require 'wallee-ruby-sdk/models/bank_account_state'
require 'wallee-ruby-sdk/models/bank_account_type'
require 'wallee-ruby-sdk/models/bank_transaction'
require 'wallee-ruby-sdk/models/bank_transaction_flow_direction'
require 'wallee-ruby-sdk/models/bank_transaction_source'
require 'wallee-ruby-sdk/models/bank_transaction_state'
require 'wallee-ruby-sdk/models/bank_transaction_type'
require 'wallee-ruby-sdk/models/charge_attempt_environment'
require 'wallee-ruby-sdk/models/charge_attempt_state'
require 'wallee-ruby-sdk/models/charge_flow'
require 'wallee-ruby-sdk/models/charge_flow_level_configuration'
require 'wallee-ruby-sdk/models/charge_flow_level_configuration_type'
require 'wallee-ruby-sdk/models/charge_flow_level_state'
require 'wallee-ruby-sdk/models/charge_state'
require 'wallee-ruby-sdk/models/charge_type'
require 'wallee-ruby-sdk/models/client_error'
require 'wallee-ruby-sdk/models/client_error_type'
require 'wallee-ruby-sdk/models/completion_line_item'
require 'wallee-ruby-sdk/models/completion_line_item_create'
require 'wallee-ruby-sdk/models/condition'
require 'wallee-ruby-sdk/models/condition_type'
require 'wallee-ruby-sdk/models/connector_invocation_stage'
require 'wallee-ruby-sdk/models/creation_entity_state'
require 'wallee-ruby-sdk/models/criteria_operator'
require 'wallee-ruby-sdk/models/currency_bank_account'
require 'wallee-ruby-sdk/models/customer'
require 'wallee-ruby-sdk/models/customer_address'
require 'wallee-ruby-sdk/models/customer_address_type'
require 'wallee-ruby-sdk/models/customer_comment'
require 'wallee-ruby-sdk/models/customer_postal_address'
require 'wallee-ruby-sdk/models/customer_postal_address_create'
require 'wallee-ruby-sdk/models/customers_presence'
require 'wallee-ruby-sdk/models/data_collection_type'
require 'wallee-ruby-sdk/models/database_translated_string'
require 'wallee-ruby-sdk/models/database_translated_string_create'
require 'wallee-ruby-sdk/models/database_translated_string_item'
require 'wallee-ruby-sdk/models/database_translated_string_item_create'
require 'wallee-ruby-sdk/models/debt_collection_case'
require 'wallee-ruby-sdk/models/debt_collection_case_document'
require 'wallee-ruby-sdk/models/debt_collection_case_source'
require 'wallee-ruby-sdk/models/debt_collection_case_state'
require 'wallee-ruby-sdk/models/debt_collection_environment'
require 'wallee-ruby-sdk/models/debt_collection_receipt'
require 'wallee-ruby-sdk/models/debt_collection_receipt_source'
require 'wallee-ruby-sdk/models/debt_collector'
require 'wallee-ruby-sdk/models/debt_collector_condition'
require 'wallee-ruby-sdk/models/debt_collector_condition_type'
require 'wallee-ruby-sdk/models/debt_collector_configuration'
require 'wallee-ruby-sdk/models/delivery_indication_decision_reason'
require 'wallee-ruby-sdk/models/delivery_indication_state'
require 'wallee-ruby-sdk/models/document_template'
require 'wallee-ruby-sdk/models/document_template_type'
require 'wallee-ruby-sdk/models/document_template_type_group'
require 'wallee-ruby-sdk/models/entity_export_request'
require 'wallee-ruby-sdk/models/entity_query'
require 'wallee-ruby-sdk/models/entity_query_filter'
require 'wallee-ruby-sdk/models/entity_query_filter_type'
require 'wallee-ruby-sdk/models/entity_query_order_by'
require 'wallee-ruby-sdk/models/entity_query_order_by_type'
require 'wallee-ruby-sdk/models/environment'
require 'wallee-ruby-sdk/models/external_transfer_bank_transaction'
require 'wallee-ruby-sdk/models/failure_category'
require 'wallee-ruby-sdk/models/failure_reason'
require 'wallee-ruby-sdk/models/feature'
require 'wallee-ruby-sdk/models/feature_category'
require 'wallee-ruby-sdk/models/gender'
require 'wallee-ruby-sdk/models/human_user'
require 'wallee-ruby-sdk/models/installment_calculated_plan'
require 'wallee-ruby-sdk/models/installment_calculated_slice'
require 'wallee-ruby-sdk/models/installment_payment'
require 'wallee-ruby-sdk/models/installment_payment_slice_state'
require 'wallee-ruby-sdk/models/installment_payment_state'
require 'wallee-ruby-sdk/models/installment_plan_configuration'
require 'wallee-ruby-sdk/models/installment_plan_slice_configuration'
require 'wallee-ruby-sdk/models/internal_transfer_bank_transaction'
require 'wallee-ruby-sdk/models/label'
require 'wallee-ruby-sdk/models/label_descriptor'
require 'wallee-ruby-sdk/models/label_descriptor_category'
require 'wallee-ruby-sdk/models/label_descriptor_group'
require 'wallee-ruby-sdk/models/label_descriptor_type'
require 'wallee-ruby-sdk/models/legal_organization_form'
require 'wallee-ruby-sdk/models/line_item'
require 'wallee-ruby-sdk/models/line_item_attribute'
require 'wallee-ruby-sdk/models/line_item_attribute_create'
require 'wallee-ruby-sdk/models/line_item_create'
require 'wallee-ruby-sdk/models/line_item_reduction'
require 'wallee-ruby-sdk/models/line_item_reduction_create'
require 'wallee-ruby-sdk/models/line_item_type'
require 'wallee-ruby-sdk/models/localized_string'
require 'wallee-ruby-sdk/models/manual_task'
require 'wallee-ruby-sdk/models/manual_task_action'
require 'wallee-ruby-sdk/models/manual_task_action_style'
require 'wallee-ruby-sdk/models/manual_task_state'
require 'wallee-ruby-sdk/models/manual_task_type'
require 'wallee-ruby-sdk/models/metric_usage'
require 'wallee-ruby-sdk/models/one_click_payment_mode'
require 'wallee-ruby-sdk/models/payment_adjustment'
require 'wallee-ruby-sdk/models/payment_adjustment_type'
require 'wallee-ruby-sdk/models/payment_connector'
require 'wallee-ruby-sdk/models/payment_connector_configuration'
require 'wallee-ruby-sdk/models/payment_connector_feature'
require 'wallee-ruby-sdk/models/payment_contract'
require 'wallee-ruby-sdk/models/payment_contract_state'
require 'wallee-ruby-sdk/models/payment_contract_type'
require 'wallee-ruby-sdk/models/payment_information_hash'
require 'wallee-ruby-sdk/models/payment_information_hash_type'
require 'wallee-ruby-sdk/models/payment_link'
require 'wallee-ruby-sdk/models/payment_link_address_handling_mode'
require 'wallee-ruby-sdk/models/payment_link_protection_mode'
require 'wallee-ruby-sdk/models/payment_link_update'
require 'wallee-ruby-sdk/models/payment_method'
require 'wallee-ruby-sdk/models/payment_method_brand'
require 'wallee-ruby-sdk/models/payment_method_configuration'
require 'wallee-ruby-sdk/models/payment_primary_risk_taker'
require 'wallee-ruby-sdk/models/payment_processor'
require 'wallee-ruby-sdk/models/payment_processor_configuration'
require 'wallee-ruby-sdk/models/payment_terminal'
require 'wallee-ruby-sdk/models/payment_terminal_address'
require 'wallee-ruby-sdk/models/payment_terminal_configuration'
require 'wallee-ruby-sdk/models/payment_terminal_configuration_state'
require 'wallee-ruby-sdk/models/payment_terminal_configuration_version'
require 'wallee-ruby-sdk/models/payment_terminal_configuration_version_state'
require 'wallee-ruby-sdk/models/payment_terminal_location'
require 'wallee-ruby-sdk/models/payment_terminal_location_state'
require 'wallee-ruby-sdk/models/payment_terminal_location_version'
require 'wallee-ruby-sdk/models/payment_terminal_location_version_state'
require 'wallee-ruby-sdk/models/payment_terminal_state'
require 'wallee-ruby-sdk/models/payment_terminal_type'
require 'wallee-ruby-sdk/models/permission'
require 'wallee-ruby-sdk/models/persistable_currency_amount'
require 'wallee-ruby-sdk/models/persistable_currency_amount_update'
require 'wallee-ruby-sdk/models/product_fee_type'
require 'wallee-ruby-sdk/models/product_metered_fee'
require 'wallee-ruby-sdk/models/product_metered_fee_update'
require 'wallee-ruby-sdk/models/product_metered_tier_fee'
require 'wallee-ruby-sdk/models/product_metered_tier_fee_update'
require 'wallee-ruby-sdk/models/product_metered_tier_pricing'
require 'wallee-ruby-sdk/models/product_period_fee'
require 'wallee-ruby-sdk/models/product_period_fee_update'
require 'wallee-ruby-sdk/models/product_setup_fee'
require 'wallee-ruby-sdk/models/product_setup_fee_update'
require 'wallee-ruby-sdk/models/refund'
require 'wallee-ruby-sdk/models/refund_comment'
require 'wallee-ruby-sdk/models/refund_create'
require 'wallee-ruby-sdk/models/refund_state'
require 'wallee-ruby-sdk/models/refund_type'
require 'wallee-ruby-sdk/models/rendered_document'
require 'wallee-ruby-sdk/models/rendered_terminal_receipt'
require 'wallee-ruby-sdk/models/resource_path'
require 'wallee-ruby-sdk/models/resource_state'
require 'wallee-ruby-sdk/models/rest_address_format'
require 'wallee-ruby-sdk/models/rest_address_format_field'
require 'wallee-ruby-sdk/models/rest_country'
require 'wallee-ruby-sdk/models/rest_country_state'
require 'wallee-ruby-sdk/models/rest_currency'
require 'wallee-ruby-sdk/models/rest_language'
require 'wallee-ruby-sdk/models/role'
require 'wallee-ruby-sdk/models/sales_channel'
require 'wallee-ruby-sdk/models/scope'
require 'wallee-ruby-sdk/models/server_error'
require 'wallee-ruby-sdk/models/shopify_additional_line_item_data'
require 'wallee-ruby-sdk/models/shopify_integration'
require 'wallee-ruby-sdk/models/shopify_integration_payment_app_version'
require 'wallee-ruby-sdk/models/shopify_integration_subscription_app_version'
require 'wallee-ruby-sdk/models/shopify_recurring_order_state'
require 'wallee-ruby-sdk/models/shopify_recurring_order_update_request'
require 'wallee-ruby-sdk/models/shopify_subscriber'
require 'wallee-ruby-sdk/models/shopify_subscriber_creation'
require 'wallee-ruby-sdk/models/shopify_subscriber_state'
require 'wallee-ruby-sdk/models/shopify_subscription'
require 'wallee-ruby-sdk/models/shopify_subscription_address_create'
require 'wallee-ruby-sdk/models/shopify_subscription_billing_interval_unit'
require 'wallee-ruby-sdk/models/shopify_subscription_creation_request'
require 'wallee-ruby-sdk/models/shopify_subscription_model_billing_configuration'
require 'wallee-ruby-sdk/models/shopify_subscription_model_item'
require 'wallee-ruby-sdk/models/shopify_subscription_model_tax_line'
require 'wallee-ruby-sdk/models/shopify_subscription_product'
require 'wallee-ruby-sdk/models/shopify_subscription_product_pricing_option'
require 'wallee-ruby-sdk/models/shopify_subscription_product_state'
require 'wallee-ruby-sdk/models/shopify_subscription_state'
require 'wallee-ruby-sdk/models/shopify_subscription_suspension'
require 'wallee-ruby-sdk/models/shopify_subscription_suspension_create'
require 'wallee-ruby-sdk/models/shopify_subscription_suspension_initiator'
require 'wallee-ruby-sdk/models/shopify_subscription_suspension_state'
require 'wallee-ruby-sdk/models/shopify_subscription_suspension_type'
require 'wallee-ruby-sdk/models/shopify_subscription_update_addresses_request'
require 'wallee-ruby-sdk/models/shopify_subscription_update_request'
require 'wallee-ruby-sdk/models/shopify_subscription_version'
require 'wallee-ruby-sdk/models/shopify_subscription_version_item'
require 'wallee-ruby-sdk/models/shopify_subscription_version_item_price_strategy'
require 'wallee-ruby-sdk/models/shopify_subscription_version_state'
require 'wallee-ruby-sdk/models/shopify_subscription_weekday'
require 'wallee-ruby-sdk/models/shopify_tax_line'
require 'wallee-ruby-sdk/models/shopify_transaction_state'
require 'wallee-ruby-sdk/models/space'
require 'wallee-ruby-sdk/models/space_address'
require 'wallee-ruby-sdk/models/space_address_create'
require 'wallee-ruby-sdk/models/space_reference'
require 'wallee-ruby-sdk/models/space_reference_state'
require 'wallee-ruby-sdk/models/space_view'
require 'wallee-ruby-sdk/models/static_value'
require 'wallee-ruby-sdk/models/subscriber'
require 'wallee-ruby-sdk/models/subscriber_update'
require 'wallee-ruby-sdk/models/subscription'
require 'wallee-ruby-sdk/models/subscription_affiliate'
require 'wallee-ruby-sdk/models/subscription_affiliate_update'
require 'wallee-ruby-sdk/models/subscription_change_request'
require 'wallee-ruby-sdk/models/subscription_charge'
require 'wallee-ruby-sdk/models/subscription_charge_create'
require 'wallee-ruby-sdk/models/subscription_charge_processing_type'
require 'wallee-ruby-sdk/models/subscription_charge_state'
require 'wallee-ruby-sdk/models/subscription_charge_type'
require 'wallee-ruby-sdk/models/subscription_component_configuration'
require 'wallee-ruby-sdk/models/subscription_component_reference_configuration'
require 'wallee-ruby-sdk/models/subscription_create_request'
require 'wallee-ruby-sdk/models/subscription_ledger_entry'
require 'wallee-ruby-sdk/models/subscription_ledger_entry_create'
require 'wallee-ruby-sdk/models/subscription_ledger_entry_state'
require 'wallee-ruby-sdk/models/subscription_metric'
require 'wallee-ruby-sdk/models/subscription_metric_type'
require 'wallee-ruby-sdk/models/subscription_metric_update'
require 'wallee-ruby-sdk/models/subscription_metric_usage_report'
require 'wallee-ruby-sdk/models/subscription_metric_usage_report_create'
require 'wallee-ruby-sdk/models/subscription_period_bill'
require 'wallee-ruby-sdk/models/subscription_period_bill_state'
require 'wallee-ruby-sdk/models/subscription_product'
require 'wallee-ruby-sdk/models/subscription_product_component'
require 'wallee-ruby-sdk/models/subscription_product_component_group'
require 'wallee-ruby-sdk/models/subscription_product_component_group_update'
require 'wallee-ruby-sdk/models/subscription_product_component_reference'
require 'wallee-ruby-sdk/models/subscription_product_component_reference_state'
require 'wallee-ruby-sdk/models/subscription_product_component_update'
require 'wallee-ruby-sdk/models/subscription_product_retirement'
require 'wallee-ruby-sdk/models/subscription_product_retirement_create'
require 'wallee-ruby-sdk/models/subscription_product_state'
require 'wallee-ruby-sdk/models/subscription_product_version'
require 'wallee-ruby-sdk/models/subscription_product_version_pending'
require 'wallee-ruby-sdk/models/subscription_product_version_retirement'
require 'wallee-ruby-sdk/models/subscription_product_version_retirement_create'
require 'wallee-ruby-sdk/models/subscription_product_version_state'
require 'wallee-ruby-sdk/models/subscription_state'
require 'wallee-ruby-sdk/models/subscription_suspension'
require 'wallee-ruby-sdk/models/subscription_suspension_action'
require 'wallee-ruby-sdk/models/subscription_suspension_create'
require 'wallee-ruby-sdk/models/subscription_suspension_reason'
require 'wallee-ruby-sdk/models/subscription_suspension_state'
require 'wallee-ruby-sdk/models/subscription_update'
require 'wallee-ruby-sdk/models/subscription_update_request'
require 'wallee-ruby-sdk/models/subscription_version'
require 'wallee-ruby-sdk/models/subscription_version_state'
require 'wallee-ruby-sdk/models/tax'
require 'wallee-ruby-sdk/models/tax_calculation'
require 'wallee-ruby-sdk/models/tax_class'
require 'wallee-ruby-sdk/models/tax_create'
require 'wallee-ruby-sdk/models/tenant_database'
require 'wallee-ruby-sdk/models/token'
require 'wallee-ruby-sdk/models/token_version'
require 'wallee-ruby-sdk/models/token_version_state'
require 'wallee-ruby-sdk/models/token_version_type'
require 'wallee-ruby-sdk/models/tokenization_mode'
require 'wallee-ruby-sdk/models/transaction'
require 'wallee-ruby-sdk/models/transaction_aware_entity'
require 'wallee-ruby-sdk/models/transaction_comment'
require 'wallee-ruby-sdk/models/transaction_completion_behavior'
require 'wallee-ruby-sdk/models/transaction_completion_mode'
require 'wallee-ruby-sdk/models/transaction_completion_request'
require 'wallee-ruby-sdk/models/transaction_completion_state'
require 'wallee-ruby-sdk/models/transaction_environment_selection_strategy'
require 'wallee-ruby-sdk/models/transaction_group'
require 'wallee-ruby-sdk/models/transaction_group_state'
require 'wallee-ruby-sdk/models/transaction_invoice_comment'
require 'wallee-ruby-sdk/models/transaction_invoice_replacement'
require 'wallee-ruby-sdk/models/transaction_invoice_state'
require 'wallee-ruby-sdk/models/transaction_line_item_update_request'
require 'wallee-ruby-sdk/models/transaction_state'
require 'wallee-ruby-sdk/models/transaction_user_interface_type'
require 'wallee-ruby-sdk/models/transaction_void_mode'
require 'wallee-ruby-sdk/models/transaction_void_state'
require 'wallee-ruby-sdk/models/two_factor_authentication_type'
require 'wallee-ruby-sdk/models/unencrypted_card_data'
require 'wallee-ruby-sdk/models/unencrypted_card_data_create'
require 'wallee-ruby-sdk/models/user'
require 'wallee-ruby-sdk/models/user_account_role'
require 'wallee-ruby-sdk/models/user_space_role'
require 'wallee-ruby-sdk/models/user_type'
require 'wallee-ruby-sdk/models/webhook_identity'
require 'wallee-ruby-sdk/models/webhook_listener'
require 'wallee-ruby-sdk/models/webhook_listener_entity'
require 'wallee-ruby-sdk/models/webhook_url'
require 'wallee-ruby-sdk/models/account_create'
require 'wallee-ruby-sdk/models/account_update'
require 'wallee-ruby-sdk/models/application_user'
require 'wallee-ruby-sdk/models/application_user_create'
require 'wallee-ruby-sdk/models/application_user_update'
require 'wallee-ruby-sdk/models/charge'
require 'wallee-ruby-sdk/models/charge_attempt'
require 'wallee-ruby-sdk/models/charge_bank_transaction'
require 'wallee-ruby-sdk/models/charge_flow_level'
require 'wallee-ruby-sdk/models/charge_flow_level_payment_link'
require 'wallee-ruby-sdk/models/connector_invocation'
require 'wallee-ruby-sdk/models/customer_active'
require 'wallee-ruby-sdk/models/customer_address_active'
require 'wallee-ruby-sdk/models/customer_address_create'
require 'wallee-ruby-sdk/models/customer_comment_active'
require 'wallee-ruby-sdk/models/customer_comment_create'
require 'wallee-ruby-sdk/models/customer_create'
require 'wallee-ruby-sdk/models/debt_collection_case_create'
require 'wallee-ruby-sdk/models/debt_collection_case_update'
require 'wallee-ruby-sdk/models/delivery_indication'
require 'wallee-ruby-sdk/models/human_user_create'
require 'wallee-ruby-sdk/models/human_user_update'
require 'wallee-ruby-sdk/models/installment_payment_slice'
require 'wallee-ruby-sdk/models/payment_link_active'
require 'wallee-ruby-sdk/models/payment_link_create'
require 'wallee-ruby-sdk/models/refund_bank_transaction'
require 'wallee-ruby-sdk/models/refund_comment_active'
require 'wallee-ruby-sdk/models/refund_comment_create'
require 'wallee-ruby-sdk/models/refund_recovery_bank_transaction'
require 'wallee-ruby-sdk/models/shopify_recurring_order'
require 'wallee-ruby-sdk/models/shopify_subscription_address'
require 'wallee-ruby-sdk/models/shopify_subscription_product_create'
require 'wallee-ruby-sdk/models/shopify_subscription_product_update'
require 'wallee-ruby-sdk/models/shopify_transaction'
require 'wallee-ruby-sdk/models/space_create'
require 'wallee-ruby-sdk/models/space_update'
require 'wallee-ruby-sdk/models/subscriber_active'
require 'wallee-ruby-sdk/models/subscriber_create'
require 'wallee-ruby-sdk/models/subscription_affiliate_create'
require 'wallee-ruby-sdk/models/subscription_affiliate_deleted'
require 'wallee-ruby-sdk/models/subscription_affiliate_inactive'
require 'wallee-ruby-sdk/models/subscription_metric_active'
require 'wallee-ruby-sdk/models/subscription_metric_create'
require 'wallee-ruby-sdk/models/subscription_pending'
require 'wallee-ruby-sdk/models/subscription_product_active'
require 'wallee-ruby-sdk/models/subscription_product_create'
require 'wallee-ruby-sdk/models/subscription_suspension_running'
require 'wallee-ruby-sdk/models/token_create'
require 'wallee-ruby-sdk/models/token_update'
require 'wallee-ruby-sdk/models/transaction_comment_active'
require 'wallee-ruby-sdk/models/transaction_comment_create'
require 'wallee-ruby-sdk/models/transaction_completion'
require 'wallee-ruby-sdk/models/transaction_create'
require 'wallee-ruby-sdk/models/transaction_invoice'
require 'wallee-ruby-sdk/models/transaction_invoice_comment_active'
require 'wallee-ruby-sdk/models/transaction_invoice_comment_create'
require 'wallee-ruby-sdk/models/transaction_line_item_version'
require 'wallee-ruby-sdk/models/transaction_pending'
require 'wallee-ruby-sdk/models/transaction_void'
require 'wallee-ruby-sdk/models/webhook_listener_create'
require 'wallee-ruby-sdk/models/webhook_listener_update'
require 'wallee-ruby-sdk/models/webhook_url_create'
require 'wallee-ruby-sdk/models/webhook_url_update'
require 'wallee-ruby-sdk/models/application_user_create_with_mac_key'
require 'wallee-ruby-sdk/models/subscription_affiliate_deleting'

# APIs
require 'wallee-ruby-sdk/api/account_service_api'
require 'wallee-ruby-sdk/api/application_user_service_api'
require 'wallee-ruby-sdk/api/card_processing_service_api'
require 'wallee-ruby-sdk/api/charge_attempt_service_api'
require 'wallee-ruby-sdk/api/charge_bank_transaction_service_api'
require 'wallee-ruby-sdk/api/charge_flow_level_payment_link_service_api'
require 'wallee-ruby-sdk/api/charge_flow_level_service_api'
require 'wallee-ruby-sdk/api/charge_flow_service_api'
require 'wallee-ruby-sdk/api/condition_type_service_api'
require 'wallee-ruby-sdk/api/country_service_api'
require 'wallee-ruby-sdk/api/country_state_service_api'
require 'wallee-ruby-sdk/api/currency_service_api'
require 'wallee-ruby-sdk/api/customer_address_service_api'
require 'wallee-ruby-sdk/api/customer_comment_service_api'
require 'wallee-ruby-sdk/api/customer_service_api'
require 'wallee-ruby-sdk/api/debt_collection_case_service_api'
require 'wallee-ruby-sdk/api/debt_collector_configuration_service_api'
require 'wallee-ruby-sdk/api/debt_collector_service_api'
require 'wallee-ruby-sdk/api/delivery_indication_service_api'
require 'wallee-ruby-sdk/api/document_template_service_api'
require 'wallee-ruby-sdk/api/document_template_type_service_api'
require 'wallee-ruby-sdk/api/external_transfer_bank_transaction_service_api'
require 'wallee-ruby-sdk/api/human_user_service_api'
require 'wallee-ruby-sdk/api/installment_payment_service_api'
require 'wallee-ruby-sdk/api/installment_payment_slice_service_api'
require 'wallee-ruby-sdk/api/installment_plan_calculation_service_api'
require 'wallee-ruby-sdk/api/installment_plan_configuration_service_api'
require 'wallee-ruby-sdk/api/installment_plan_slice_configuration_service_api'
require 'wallee-ruby-sdk/api/internal_transfer_bank_transaction_service_api'
require 'wallee-ruby-sdk/api/label_description_group_service_api'
require 'wallee-ruby-sdk/api/label_description_service_api'
require 'wallee-ruby-sdk/api/language_service_api'
require 'wallee-ruby-sdk/api/legal_organization_form_service_api'
require 'wallee-ruby-sdk/api/manual_task_service_api'
require 'wallee-ruby-sdk/api/mertic_usage_service_api'
require 'wallee-ruby-sdk/api/payment_connector_configuration_service_api'
require 'wallee-ruby-sdk/api/payment_connector_service_api'
require 'wallee-ruby-sdk/api/payment_link_service_api'
require 'wallee-ruby-sdk/api/payment_method_brand_service_api'
require 'wallee-ruby-sdk/api/payment_method_configuration_service_api'
require 'wallee-ruby-sdk/api/payment_method_service_api'
require 'wallee-ruby-sdk/api/payment_processor_configuration_service_api'
require 'wallee-ruby-sdk/api/payment_processor_service_api'
require 'wallee-ruby-sdk/api/payment_terminal_service_api'
require 'wallee-ruby-sdk/api/payment_terminal_till_service_api'
require 'wallee-ruby-sdk/api/permission_service_api'
require 'wallee-ruby-sdk/api/refund_bank_transaction_service_api'
require 'wallee-ruby-sdk/api/refund_comment_service_api'
require 'wallee-ruby-sdk/api/refund_recovery_bank_transaction_service_api'
require 'wallee-ruby-sdk/api/refund_service_api'
require 'wallee-ruby-sdk/api/shopify_recurring_order_service_api'
require 'wallee-ruby-sdk/api/shopify_subscriber_service_api'
require 'wallee-ruby-sdk/api/shopify_subscription_product_service_api'
require 'wallee-ruby-sdk/api/shopify_subscription_service_api'
require 'wallee-ruby-sdk/api/shopify_subscription_suspension_service_api'
require 'wallee-ruby-sdk/api/shopify_subscription_version_service_api'
require 'wallee-ruby-sdk/api/shopify_transaction_service_api'
require 'wallee-ruby-sdk/api/space_service_api'
require 'wallee-ruby-sdk/api/static_value_service_api'
require 'wallee-ruby-sdk/api/subscriber_service_api'
require 'wallee-ruby-sdk/api/subscription_affiliate_service_api'
require 'wallee-ruby-sdk/api/subscription_charge_service_api'
require 'wallee-ruby-sdk/api/subscription_ledger_entry_service_api'
require 'wallee-ruby-sdk/api/subscription_metric_service_api'
require 'wallee-ruby-sdk/api/subscription_metric_usage_service_api'
require 'wallee-ruby-sdk/api/subscription_period_bill_service_api'
require 'wallee-ruby-sdk/api/subscription_product_component_group_service_api'
require 'wallee-ruby-sdk/api/subscription_product_component_service_api'
require 'wallee-ruby-sdk/api/subscription_product_fee_tier_service_api'
require 'wallee-ruby-sdk/api/subscription_product_metered_fee_service_api'
require 'wallee-ruby-sdk/api/subscription_product_period_fee_service_api'
require 'wallee-ruby-sdk/api/subscription_product_retirement_service_api'
require 'wallee-ruby-sdk/api/subscription_product_service_api'
require 'wallee-ruby-sdk/api/subscription_product_setup_fee_service_api'
require 'wallee-ruby-sdk/api/subscription_product_version_retirement_service_api'
require 'wallee-ruby-sdk/api/subscription_product_version_service_api'
require 'wallee-ruby-sdk/api/subscription_service_api'
require 'wallee-ruby-sdk/api/subscription_suspension_service_api'
require 'wallee-ruby-sdk/api/subscription_version_service_api'
require 'wallee-ruby-sdk/api/token_service_api'
require 'wallee-ruby-sdk/api/token_version_service_api'
require 'wallee-ruby-sdk/api/transaction_comment_service_api'
require 'wallee-ruby-sdk/api/transaction_completion_service_api'
require 'wallee-ruby-sdk/api/transaction_iframe_service_api'
require 'wallee-ruby-sdk/api/transaction_invoice_comment_service_api'
require 'wallee-ruby-sdk/api/transaction_invoice_service_api'
require 'wallee-ruby-sdk/api/transaction_lightbox_service_api'
require 'wallee-ruby-sdk/api/transaction_mobile_sdk_service_api'
require 'wallee-ruby-sdk/api/transaction_payment_page_service_api'
require 'wallee-ruby-sdk/api/transaction_service_api'
require 'wallee-ruby-sdk/api/transaction_terminal_service_api'
require 'wallee-ruby-sdk/api/transaction_void_service_api'
require 'wallee-ruby-sdk/api/user_account_role_service_api'
require 'wallee-ruby-sdk/api/user_space_role_service_api'
require 'wallee-ruby-sdk/api/webhook_listener_service_api'
require 'wallee-ruby-sdk/api/webhook_url_service_api'

module Wallee
  class << self
    # Customize default settings for the SDK using block.
    #   Wallee.configure do |config|
    #     config.user_id = "xxx"
    #     config.authentication_key = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
