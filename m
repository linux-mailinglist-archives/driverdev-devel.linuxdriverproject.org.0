Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452981B7597
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 14:41:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 167FD87ADB;
	Fri, 24 Apr 2020 12:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2EuJ+vswDOue; Fri, 24 Apr 2020 12:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48B7887A9C;
	Fri, 24 Apr 2020 12:41:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E00C1BF348
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8B5C84173
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tSgrfaoKOGwy for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 12:41:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C0A8687A9C
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 12:41:49 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n16so4565656pgb.7
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 05:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zmf4L93ddjMt0HYM8KKsAIH6rmGq7s9imJ6yiVkad7E=;
 b=giC2/xeRX60HYWbGuSFdiCyBH8CZVmhFO6243i2DYNOmJCBu/+9dPeBXFmU18ZjxXi
 +fYPmybCthvKkv+cOC/vV8BpPLhx9JGgt+iMMU5cBuEHZyNcV4KLOLK7ECu2q1Xxu4YG
 gUYTkHWB6NuOfnpm6zimeZTta1241Cefx5asXbFIwW2MImlIc6x3IXaUUDDA7/45WlCa
 fLcYCEDv+Pnx7qhr6PmnQgL6t8O05nGangcR+t6AO8zN/ng5o3/VNp9H9a87BfFt0tph
 hkHxGSZGftuXakMpDFFMgl98JkLBK458v7fPCciLOTAz/ze3VDsI7YfiGh4UE0YI6ppE
 N7Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zmf4L93ddjMt0HYM8KKsAIH6rmGq7s9imJ6yiVkad7E=;
 b=MFcVSUWH5IamXRhpdokFs2xWvC55KSeurYa6qZbQyGmziL7PRDGNtNkrrTd1BRWdDP
 NPHBxTbLibMMkZxq7HKQkefCA6IS1pIX3R7z1dRhUQ9alnYvGvw9+3vMEFVnp5bdk9xa
 7NHNmiRMd/PrtVN4FSAl8DwSIbJ7pbZRJpOfVzmIPXhjXPjVdyinZyulLN1jgUw1VA2g
 mvtQpnNDJuKz+ZUSXZTWFvWSaCDsdRjGdSAMtZz4bZONFZaSV2JK/ilA6adCjWDaE59I
 d2zijp8rGvzTxP8qiPQk68+KMTcNFE1HP+hnOlxQLn0ZhfZQ9bOvNbpzitJE4HdmTv5I
 LsqA==
X-Gm-Message-State: AGi0PuY5M5FOEsXhwfwHbt53qqokvHqfqG3w1pmxFKjb54zCUGIZozCq
 4e6018qQ88y8VGNdl7hBVrQ6f8SLIkqhzA==
X-Google-Smtp-Source: APiQypKKGdJi7cKRyPMW1pb3cg5LVKo35kTh8D6L9gdT3jRDVD2HvKomdpg4ouYUPteV6gZNI8fxyA==
X-Received: by 2002:a62:520f:: with SMTP id g15mr7680581pfb.127.1587732109208; 
 Fri, 24 Apr 2020 05:41:49 -0700 (PDT)
Received: from blackclown ([171.60.179.95])
 by smtp.gmail.com with ESMTPSA id t126sm5544307pfb.29.2020.04.24.05.41.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 05:41:48 -0700 (PDT)
Date: Fri, 24 Apr 2020 18:11:32 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200424124105.GA18534@blackclown>
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
Content-Type: multipart/mixed; boundary="===============7065429999117892291=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7065429999117892291==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1SQmhf2mF2YjsYvc"
Content-Disposition: inline


--1SQmhf2mF2YjsYvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Break lines with length over 80 characters to conform
to the linux coding style and refactor wherever necessary.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---

Changes in v2:
	- Introduced a temporary variable for the memzcmp statement.
	- Addressed the checkpatch problem with wfx_get_hw_rate().
	- Restored the function definition of wfx_tx_get_tx_parms
	  as suggested by the reviewer.
	- Added suggested changes for req->packet_id statement.

 drivers/staging/wfx/data_tx.c | 39 ++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 9c1a91207dd8..ae472ff8a088 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -20,6 +20,7 @@
 static int wfx_get_hw_rate(struct wfx_dev *wdev,
 			   const struct ieee80211_tx_rate *rate)
 {
+	struct ieee80211_rate tmp;
 	if (rate->idx < 0)
 		return -1;
 	if (rate->flags & IEEE80211_TX_RC_MCS) {
@@ -31,7 +32,8 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 	}
 	// WFx only support 2GHz, else band information should be retrieved
 	// from ieee80211_tx_info
-	return wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx].hw_=
value;
+	tmp =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx];
+	return tmp.hw_value;
 }
=20
 /* TX policy cache implementation */
@@ -159,14 +161,16 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 {
 	struct tx_policy *policies =3D wvif->tx_policy_cache.cache;
 	u8 tmp_rates[12];
-	int i;
+	int i, tmp;
=20
 	do {
 		spin_lock_bh(&wvif->tx_policy_cache.lock);
-		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i)
-			if (!policies[i].uploaded &&
-			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
+		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i) {
+			tmp =3D memzcmp(policies[i].rates,
+				      sizeof(policies[i].rates));
+			if (!policies[i].uploaded && tmp)
 				break;
+		}
 		if (i < HIF_TX_RETRY_POLICY_MAX) {
 			policies[i].uploaded =3D true;
 			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
@@ -290,7 +294,8 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate=
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
@@ -318,7 +323,8 @@ static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
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
@@ -381,7 +387,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ie=
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
@@ -392,9 +399,10 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct i=
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
@@ -517,7 +525,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const stru=
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
@@ -554,7 +563,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const stru=
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
@@ -588,7 +598,8 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee8021=
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


--1SQmhf2mF2YjsYvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl6i3nwACgkQ+gRsbIfe
744WsxAAkQEc+KPwAQNsExtEurqT70QXM3H77aqxDkaxEJqsphPQnZKdTJksPEO/
pgXi4+rjqBZf7lM3iliE1o7bbIx1lZlT8OkdV636BcT7q1Xk+bHv79TQYY6LMO6/
qHDKfcBkapIyZPyIBqr+byQF/YdY8harizCarKTDd8yBiyDsTAFp711FnvoSal9d
EajpbExCLGxEi1Pe0uEEg/u7nFztGZmOxzW2/X1GrlS3H9NR/DeDajHEJUrk2WXR
80SeSsAoHJ8Vc8oUv4/Ym2YmBNs1xnYuKW+LtGPrtwHvhipLWu1tpWXxnHlacARw
cTUzgfvy8kZ1kmOwvGeyVLDHp7FAgHCbCqbYzdxP1yhDP1MbssNgk78ZyigecWBx
47PkDpiz8S51M6CDy4oTWWy47S6F3NYQQbIsF9qkzjMShxmEcD60iLGABiKlmeRy
KMZvIbcjAUjEMyX2UP3tlIXRiVEIvQeYZnaQ4MupRPbQrNcrWTUckg0ejX8mHOSV
9JrUrTQF3+mMVRi1bFt34hz4t3R7jnCp5R2R6bMmg9zG+/2DnFON/9yN9d9chNjG
Lcj+1BrC8t2wIKpL5QRmDOPhp6erwe+HDmJIdoBLqlpM/0a8xJoaScK6vPY2I09l
09WA3AdIMXW7jfYZSr7F/eUXedJEEDzVUJF2Fd91n/T2rngWukY=
=3JqP
-----END PGP SIGNATURE-----

--1SQmhf2mF2YjsYvc--

--===============7065429999117892291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7065429999117892291==--
