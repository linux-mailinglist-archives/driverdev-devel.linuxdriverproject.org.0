Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2391B7772
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 15:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80F6F866F2;
	Fri, 24 Apr 2020 13:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pR2T-OrOgeJc; Fri, 24 Apr 2020 13:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4791864F2;
	Fri, 24 Apr 2020 13:48:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE8CF1BF232
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 13:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA25E85810
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 13:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OumMy8xG60Uf for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 13:48:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B391C85736
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 13:48:51 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f8so3761484plt.2
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 06:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2DVzAqGlB49JWp0oL1SmWG/HV+R8mjoqAyRBZUTC0pU=;
 b=bOPPV64RPDBHzaQCub7+qxmIkVRKLLx9dXUsZVhdnxzZELOEd7nWTk9yh9bNlsAk1K
 v/QDJ/blGUmOLQksv+nBOD+qYuaXd5Q9n6XTYgnGpN9se+i+Dzoq+YAuxh/5dFqJw8IW
 /J6QBVnK6cNrW4AUqvD/eQe4FKvAPKiUUrB5Dp8MIu+IgxbXHMQuSQqK00TLlfMl7G51
 1U+N28WQuxCVor4U9oJeP9uSePchSha12ib4c+ONYUDNnpW1fhwF0Jo13+WyW1acSlZS
 m5JoxaogYsqjZzHNjH7wZXRUmEVxMqdgUfymHco1kZkLOROEhT7X2a37fgf4/WJxO9uz
 pp+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2DVzAqGlB49JWp0oL1SmWG/HV+R8mjoqAyRBZUTC0pU=;
 b=Z3JqgmxfRG9t5nutF1jE3oOlPfPVWWc7lKArVHR3gt8Swuur0oj9JDZ/RllbdIlCCt
 R7nmz8c95zczU9Kw21TMws1RiBSnXV4IPVo9nyKt6D27Ys980rNKsieN48BzVWJJPhmb
 v2FYK0Wb3F3kjXHwCrLjVih2jvQFm5q5xZnyG3b/1MULs5Yk/K9VnYz9KExSiePcL+FC
 nc1J8jJPbzqwO9EzWrpRZgExbKMArg1Og9MzyWPzlR1wcP7maSZAXgNUa4bvKanLSO6U
 a3oOaYrfDsmbh2i9wwA/lTQSAyonQ8tXTRlQQD1dEUtTEctEF+QiDjeo097fBoby2X+X
 IcNA==
X-Gm-Message-State: AGi0PuY7nYUhIfGFgFLT+HMPS8TXylIScN2R6do21n5mKblFeJ1aeLdh
 EO3cYIEvWsb2uHqWemZanlDecgR/qDWwWg==
X-Google-Smtp-Source: APiQypJOJqWEP4BGjmSiTcz0csz/1eE5bCGQliVA3G7R4LwsLZ2pWYC/AzGT371/Ei6MFHUpfaTtag==
X-Received: by 2002:a17:902:fe87:: with SMTP id
 x7mr9426287plm.282.1587736131263; 
 Fri, 24 Apr 2020 06:48:51 -0700 (PDT)
Received: from blackclown ([171.60.179.95])
 by smtp.gmail.com with ESMTPSA id i6sm5917356pfg.138.2020.04.24.06.48.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 06:48:50 -0700 (PDT)
Date: Fri, 24 Apr 2020 19:18:34 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org,
 dan.carpenter@oracle.com
Subject: [PATCH v3] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200424134834.GA19700@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2390655016928285974=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2390655016928285974==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Break lines with length over 80 characters to conform
to the linux coding style and refactor wherever necessary.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---

Changes in v3:
	- Changed the temporary variable name for the memzcmp statement
	  to is_used. (as suggested).
	- Added a temporary ieee80211_supported_band variable to address
	  the problem in wfx_get_hw_rate() more efficiently. (not
	  suggested, but still).

Changes in v2:
        - Introduced a temporary variable for the memzcmp statement.
        - Addressed the checkpatch problem with wfx_get_hw_rate().
        - Restored the function definition of wfx_tx_get_tx_parms
          as suggested by the reviewer.
        - Added suggested changes for req->packet_id statement.

 drivers/staging/wfx/data_tx.c | 40 +++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 9c1a91207dd8..717155975345 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -20,6 +20,8 @@
 static int wfx_get_hw_rate(struct wfx_dev *wdev,
 			   const struct ieee80211_tx_rate *rate)
 {
+
+	struct ieee80211_supported_band *band;
 	if (rate->idx < 0)
 		return -1;
 	if (rate->flags & IEEE80211_TX_RC_MCS) {
@@ -31,7 +33,8 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 	}
 	// WFx only support 2GHz, else band information should be retrieved
 	// from ieee80211_tx_info
-	return wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx].hw_=
value;
+	band =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
+	return band->bitrates[rate->idx].hw_value;
 }
=20
 /* TX policy cache implementation */
@@ -159,14 +162,16 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 {
 	struct tx_policy *policies =3D wvif->tx_policy_cache.cache;
 	u8 tmp_rates[12];
-	int i;
+	int i, is_used;
=20
 	do {
 		spin_lock_bh(&wvif->tx_policy_cache.lock);
-		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i)
-			if (!policies[i].uploaded &&
-			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
+		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i) {
+			is_used =3D memzcmp(policies[i].rates,
+					  sizeof(policies[i].rates));
+			if (!policies[i].uploaded && is_used)
 				break;
+		}
 		if (i < HIF_TX_RETRY_POLICY_MAX) {
 			policies[i].uploaded =3D true;
 			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
@@ -290,7 +295,8 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate=
 *rates)
 		if (rates[i].idx =3D=3D -1) {
 			rates[i].idx =3D 0;
 			rates[i].count =3D 8; // =3D=3D hw->max_rate_tries
-			rates[i].flags =3D rates[i - 1].flags & IEEE80211_TX_RC_MCS;
+			rates[i].flags =3D rates[i - 1].flags &
+					 IEEE80211_TX_RC_MCS;
 			break;
 		}
 	}
@@ -318,7 +324,8 @@ static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
 	return rate_id;
 }
=20
-static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wde=
v, struct ieee80211_tx_info *tx_info)
+static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wde=
v,
+						       struct ieee80211_tx_info *tx_info)
 {
 	struct ieee80211_tx_rate *rate =3D &tx_info->driver_rates[0];
 	struct hif_ht_tx_parameters ret =3D { };
@@ -381,7 +388,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ie=
ee80211_sta *sta,
 	hif_msg->id =3D HIF_REQ_ID_TX;
 	hif_msg->interface =3D wvif->id;
 	if (skb->len > wvif->wdev->hw_caps.size_inp_ch_buf) {
-		dev_warn(wvif->wdev->dev, "requested frame size (%d) is larger than maxi=
mum supported (%d)\n",
+		dev_warn(wvif->wdev->dev,
+			 "requested frame size (%d) is larger than maximum supported (%d)\n",
 			 skb->len, wvif->wdev->hw_caps.size_inp_ch_buf);
 		skb_pull(skb, wmsg_len);
 		return -EIO;
@@ -392,9 +400,10 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct i=
eee80211_sta *sta,
 	// packet_id just need to be unique on device. 32bits are more than
 	// necessary for that task, so we tae advantage of it to add some extra
 	// data for debug.
-	req->packet_id =3D queue_id << 28 |
-			 IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) << 16 |
-			 (atomic_add_return(1, &wvif->wdev->packet_id) & 0xFFFF);
+	req->packet_id =3D atomic_add_return(1, &wvif->wdev->packet_id) & 0xFFFF;
+	req->packet_id |=3D IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) << 16;
+	req->packet_id |=3D queue_id << 28;
+
 	req->data_flags.fc_offset =3D offset;
 	if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM)
 		req->data_flags.after_dtim =3D 1;
@@ -517,7 +526,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const stru=
ct hif_cnf_tx *arg)
 		if (tx_count < rate->count &&
 		    arg->status =3D=3D HIF_STATUS_RETRY_EXCEEDED &&
 		    arg->ack_failures)
-			dev_dbg(wvif->wdev->dev, "all retries were not consumed: %d !=3D %d\n",
+			dev_dbg(wvif->wdev->dev,
+				"all retries were not consumed: %d !=3D %d\n",
 				rate->count, tx_count);
 		if (tx_count <=3D rate->count && tx_count &&
 		    arg->txed_rate !=3D wfx_get_hw_rate(wvif->wdev, rate))
@@ -554,7 +564,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const stru=
ct hif_cnf_tx *arg)
 		else
 			tx_info->flags |=3D IEEE80211_TX_STAT_ACK;
 	} else if (arg->status =3D=3D HIF_REQUEUE) {
-		WARN(!arg->tx_result_flags.requeue, "incoherent status and result_flags"=
);
+		WARN(!arg->tx_result_flags.requeue,
+		     "incoherent status and result_flags");
 		if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
 			wvif->after_dtim_tx_allowed =3D false; // DTIM period elapsed
 			schedule_work(&wvif->update_tim_work);
@@ -588,7 +599,8 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee8021=
1_vif *vif,
 		if (wait_event_timeout(wdev->tx_dequeue,
 				       wfx_tx_queue_empty(wdev, queue, vif_id),
 				       msecs_to_jiffies(1000)) <=3D 0)
-			dev_warn(wdev->dev, "frames queued while flushing tx queues?");
+			dev_warn(wdev->dev,
+				 "frames queued while flushing tx queues?");
 	}
 	wfx_tx_flush(wdev);
 	if (wdev->chip_frozen)
--=20
2.17.1


--YZ5djTAD1cGYuMQK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl6i7jIACgkQ+gRsbIfe
746OyhAAj8dRMqUGnuvUI7iudTUDf1u/BEYvb1Y+9zUEiJNtNsulRslqAWQNugMy
QjUe1z7VcdTiPgn7ppp8i5gNE2ef19kNCfECbOTlEzdY93+agN5R/YgbdKaGow9c
vN1rhiWXbkDc4ZjmnOXqEiuExOgcW8PKSR+/CX72TGYsdmvjdLA5naQDOXCWJ1ED
h+HNr4/qPLtNLW2mcx5Dh/I7zarf2QEJDsg/PssjmYYRQhm1H7L5Hm3ZaEHyrExM
+TLKW3+RHZBp4xK7ZiBwJ11zBOyEXw1G4Z0pzLPVsG5wuAACQA0ofcDk9ZGVYIhH
HVRRdjK9HypcIaT7S8Cj2hilsgl61HlCD1BuBrz8DEiA6CegXdbAMxsnW56HA6wt
xCpqEruZhBgiwOi15hNbMYr9sqS4V5H2jJ9AihsQSbPILIvfLDwzInJoNu9UF4m0
mq4mKzBDU/Y20PtcMH3ZlPLZPH3YYbi8h61QjYHDFRVBOBlaesEw4zOHr/y3q+2S
DPMge+FlK8M28vUA1U3NEa7QJwq66F19TkCt7uHLc2Slg8rgRmfotsTOSXKqo6GL
t+kwtTHD2UYCFsV4DegCn5504t6MkJIuQ/roCuBOhQAaDyDqTmnkjYbVQsFpfR27
EbJZT5lq8PzONtTiavdshqHA5aIpOV+UCIhVK7tdajnXMUE1mz8=
=Hhh5
-----END PGP SIGNATURE-----

--YZ5djTAD1cGYuMQK--

--===============2390655016928285974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2390655016928285974==--
