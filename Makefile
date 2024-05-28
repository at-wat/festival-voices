VERSION  = 2.5
BASE_URL = http://festvox.org/packed/festival/$(VERSION)/voices
TARGETS  = \
	festvox_cmu_indic_ben_rm_cg.tar.gz \
	festvox_cmu_indic_guj_ad_cg.tar.gz \
	festvox_cmu_indic_guj_dp_cg.tar.gz \
	festvox_cmu_indic_guj_kt_cg.tar.gz \
	festvox_cmu_indic_hin_ab_cg.tar.gz \
	festvox_cmu_indic_kan_plv_cg.tar.gz \
	festvox_cmu_indic_mar_aup_cg.tar.gz \
	festvox_cmu_indic_mar_slp_cg.tar.gz \
	festvox_cmu_indic_pan_amp_cg.tar.gz \
	festvox_cmu_indic_tam_sdr_cg.tar.gz \
	festvox_cmu_indic_tel_kpn_cg.tar.gz \
	festvox_cmu_indic_tel_sk_cg.tar.gz \
	festvox_cmu_indic_tel_ss_cg.tar.gz \
	festvox_cmu_us_aew_cg.tar.gz \
	festvox_cmu_us_ahw_cg.tar.gz \
	festvox_cmu_us_aup_cg.tar.gz \
	festvox_cmu_us_awb_cg.tar.gz \
	festvox_cmu_us_axb_cg.tar.gz \
	festvox_cmu_us_bdl_cg.tar.gz \
	festvox_cmu_us_clb_cg.tar.gz \
	festvox_cmu_us_eey_cg.tar.gz \
	festvox_cmu_us_fem_cg.tar.gz \
	festvox_cmu_us_gka_cg.tar.gz \
	festvox_cmu_us_jmk_cg.tar.gz \
	festvox_cmu_us_ksp_cg.tar.gz \
	festvox_cmu_us_ljm_cg.tar.gz \
	festvox_cmu_us_lnh_cg.tar.gz \
	festvox_cmu_us_rms_cg.tar.gz \
	festvox_cmu_us_rxr_cg.tar.gz \
	festvox_cmu_us_slp_cg.tar.gz \
	festvox_cmu_us_slt_cg.tar.gz \
	festvox_kallpc16k.tar.gz \
	festvox_rablpc16k.tar.gz

.PHONY: download
download: $(TARGETS)

.PHONY: release
release:
	gh release create $(VERSION) --title $(VERSION) --notes "Mirrored from $(BASE_URL)" || true
	gh release upload $(VERSION) $(TARGETS)

$(TARGETS):
	wget $(BASE_URL)/$@
