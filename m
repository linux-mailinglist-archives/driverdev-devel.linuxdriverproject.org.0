Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E961B1B764B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 15:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 858E787ED7;
	Fri, 24 Apr 2020 13:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxECbjCx0HzZ; Fri, 24 Apr 2020 13:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D79E87E32;
	Fri, 24 Apr 2020 13:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6219E1BF232
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 13:09:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E4618833B
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 13:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MjhFpgXDpRF7 for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 13:09:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2059.outbound.protection.outlook.com [40.107.243.59])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 681D88831E
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 13:09:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dBDWoDMaj5dbVsQc47HNoVEypVhy9spHg3Ieb2a/SGldfYJUeenrLMTRnSvYGnI5EeNpACYldjTtEYna7guu1F0jlLVjWDLKpg5qPq9VXG1/YOuWpvDO7D/xH9NycBA2L2qrWXJp0KcwYj+5Uv6Z1aVekk3YDhZQin/I73HJ1MNDVOKHaY6ChN3GMrRo4DZllofFX3yqRPZuaGB8uTJ/mp04REjMMMKpmFX9dZ3prYDjIzz6QqBty+l/rqEzf2IHSgwYocpRF8uPRNgtpVqVQSrOUhgs86fwoI2eKp9QpKzvTSW/UlPLCcHbGGWJd3Cx7adV4udr+IidVKF42YDX9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DU+N3r8D/PvE8eMiH1NhowUXnYgpvrMP3Yz40OHbr4g=;
 b=mJs+Id7UzLhN0YNVbEvEIEnxNHAaaN1vQuDYZnXay65hGXrEVSFJ8d0lqvdM1VmGOFU4PG6sUATwDkIDmcbVcduVyFRbnxRZa1fkyrcVIMCIJpdrnOYUdERe3XqsGyzJAgbqv9x+rzFlfnU1mJRt9MMAqdILs7D0XBiunWOUeSJQNw91bGYN3nfNSqb6Q1tzxwLNgrmEhBTKxnJBxi+RK4ShzMHpsN6tMOY+RXMmr7guS88/+jb958j4h2fAEt5Ps6BGBhyNm6C1j+xDTLBfobLCkBErM9Y0Zl1BX1rrNLx7A2HYW+nhwwW3QcYoReo6+3W/TwO2LxX6LQcsiYBYVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DU+N3r8D/PvE8eMiH1NhowUXnYgpvrMP3Yz40OHbr4g=;
 b=XQLebj+PUvdhQbP2bSnIJGeTCmmK9ENeHuf2y9+P5JC4yF3mpDuU6BCcU62Z9opqIiGjnrsszTV3xou7vaYSn6Dn8x0meJZDpFbvJLFcNvoQzi+vdsyfX9otpXayYWz8L69rT38jwnywN64AUMoqU7YycMd9ANewqwwInLXdfKU=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB0048.namprd11.prod.outlook.com (2603:10b6:301:6a::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 13:09:37 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.020; Fri, 24 Apr
 2020 13:09:37 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v2] staging: wfx: cleanup long lines in data_tx.c
Thread-Topic: [PATCH v2] staging: wfx: cleanup long lines in data_tx.c
Thread-Index: AQHWGjW8Z5neUhdWtEqQTUeG7g2xUaiIPsiA
Date: Fri, 24 Apr 2020 13:09:37 +0000
Message-ID: <5205303.5Yc9DUstMz@pc-42>
References: <20200424124105.GA18534@blackclown>
In-Reply-To: <20200424124105.GA18534@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68a3d54f-df02-4b38-b3b4-08d7e850bdc0
x-ms-traffictypediagnostic: MWHPR11MB0048:
x-microsoft-antispam-prvs: <MWHPR11MB004811D8818D12BCAC2DCA1493D00@MWHPR11MB0048.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(39850400004)(366004)(396003)(376002)(136003)(346002)(66574012)(186003)(66446008)(8936002)(33716001)(4326008)(66556008)(26005)(76116006)(66946007)(86362001)(66476007)(478600001)(71200400001)(91956017)(64756008)(81156014)(5660300002)(2906002)(6506007)(6486002)(8676002)(6916009)(316002)(9686003)(54906003)(6512007)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B4eznPJ2LDo/xjEfEP8uqt8SSbYWHt9uDhaCADjzwMSi3nixhSzjLD9wnWZypo9ApjtJh8bj0Tg9WMikouDW8CZEjCUJSu1wkuww9H3BPVq4L3Bd72oYKDv+1wahTd4rn2w6VuG+HrTnrAoBD4G7PN6swbUdL71/plNT+67XgMAVAgrfiOg/1UsDDtE3yPn0gpTkoSE8FQEgD+6DI6+yNFlGFhEACRPKdc/FEirxDtgXjbJl0RV09CttyIJ8YP2xpkN1pjAX3hqqXqGOsscyP3ypsRhYbFeTlTkUgabsISeYzvirX+WMUnXB0ziCuMOWku0ECuharnzNoEZ2lFib8Za7Vg0CxFwtTzRZNcdGJTaZuRaO98xFwcaBaCFtpeQ4EXydKrPt1ID6CwdHAvTf77nCgyiDcgK0RnC78U8ZoM8BHw1Tfaj15qVYJFi8gLMTtnuSdid0RNV+XaUyJv70UKyU1Pd/9XBtO/+VkerjUGRlaaodIGtMYWa4JMQtQu37
x-ms-exchange-antispam-messagedata: hZP3M3SHlqwi8Q7Ny8m9WC9spuvBrWaxN5j1NNX8qfhFavfnDaK8lLJw5NvPDDNvWMRdpyqLAo5mPipFrPuw/hCsvtKJTISDYCQ6H1pBG7tPZugFbA7XfcyRhoB7U/QhHsVMNcu3k/2ionEpCXBU7l1cwJfFe5e4UcxOcrB3YJRP0mCnXZ9l3SsxxzPabKUiFWdI2VQjXKAcYtmdFQvBwMH+EbiWFZ4jHWI2KgRONSkqXy5Yim7Tb4RPgj6hFEFm6gmKAfai0H+mklOcvgGRMBwA1oicsgzHNOLWXLtfC5hWI6o89DcH7JbyiG+mnmLT5hlm1nQvtuTx/wkztmD9qtavNxiHYFnF0Md3zwI+vOVYrWyuimyo8XrAmeItr+NuJPzL8/1mAl2UkssgeMQiNUuhaSzln3RdYRf115EJ3kpSShlDjaPXVn30BXvy3MmEgH+VXxc4j2fm6lBMiXzXEYvhLEV/fAtWH7lVimDZ0vBu7YmQRoWvwloS4ZT3ciV0fagk1uHhEuO+LMYKtBoz6CKezr/bCod9zohfVsrUp7Vo6G51cKikVRFwHJIdIDPdhaLzGtCPdeH+O0zpsXzmWiz46Yn0htQVrGz7DzjsVt43TvdT721+P3jr7tk7z2wI70+AIgfz8YO3iNJmdvoaEWGEDqC6nP0IxmaNvmk8xP9Ed1rWiQi2Plc5mMhmyw4olNS+nAavqA3LAKUP2e5YBz5DUImdVsAvs9U7rCYpJvLEAUBEKJCPNQjMm5iOjfFhqnZYSSplnrHsicIdUxEXAOA+HDu40SCTWsL7ZdeZCns=
x-ms-exchange-transport-forked: True
Content-ID: <119F9D3D99E7AF4DA36E89F366B6DB8A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68a3d54f-df02-4b38-b3b4-08d7e850bdc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 13:09:37.2815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VM4S73TOMv9LXUp0YoMgB3emcojvmw3Dft24Cij2PFQtabzGTwsKgu9TnET56IDDkcptuTQc5Z7EiL1cEvBJ+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0048
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 24 April 2020 14:41:32 CEST Suraj Upadhyay wrote:
> Break lines with length over 80 characters to conform
> to the linux coding style and refactor wherever necessary.
> =

> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> =

> Changes in v2:
> 	- Introduced a temporary variable for the memzcmp statement.
> 	- Addressed the checkpatch problem with wfx_get_hw_rate().
> 	- Restored the function definition of wfx_tx_get_tx_parms
> 	  as suggested by the reviewer.
> 	- Added suggested changes for req->packet_id statement.
> =

>  drivers/staging/wfx/data_tx.c | 39 ++++++++++++++++++++++-------------
>  1 file changed, 25 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 9c1a91207dd8..ae472ff8a088 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -20,6 +20,7 @@
>  static int wfx_get_hw_rate(struct wfx_dev *wdev,
>  			   const struct ieee80211_tx_rate *rate)
>  {
> +	struct ieee80211_rate tmp;

There should be an empty line between variables declarations and start of
the code.

Maybe you could find a better name for the variable? (arf... "rate" is
already used)

>  	if (rate->idx < 0)
>  		return -1;
>  	if (rate->flags & IEEE80211_TX_RC_MCS) {
> @@ -31,7 +32,8 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
>  	}
>  	// WFx only support 2GHz, else band information should be retrieved
>  	// from ieee80211_tx_info
> -	return wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx].h=
w_value;
> +	tmp =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx];

I would avoid the copy of the struct. (event if, in your case, I think it
does not change the generated code.

> +	return tmp.hw_value;
>  }
>  =

>  /* TX policy cache implementation */
> @@ -159,14 +161,16 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvi=
f)
>  {
>  	struct tx_policy *policies =3D wvif->tx_policy_cache.cache;
>  	u8 tmp_rates[12];
> -	int i;
> +	int i, tmp;

Maybe you could name it 'is_used' ?

>  =

>  	do {
>  		spin_lock_bh(&wvif->tx_policy_cache.lock);
> -		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i)
> -			if (!policies[i].uploaded &&
> -			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
> +		for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i) {
> +			tmp =3D memzcmp(policies[i].rates,
> +				      sizeof(policies[i].rates));
> +			if (!policies[i].uploaded && tmp)
>  				break;
> +		}
>  		if (i < HIF_TX_RETRY_POLICY_MAX) {
>  			policies[i].uploaded =3D true;
>  			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
> @@ -290,7 +294,8 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_ra=
te *rates)
>  		if (rates[i].idx =3D=3D -1) {
>  			rates[i].idx =3D 0;
>  			rates[i].count =3D 8; // =3D=3D hw->max_rate_tries
> -			rates[i].flags =3D rates[i - 1].flags & IEEE80211_TX_RC_MCS;
> +			rates[i].flags =3D rates[i - 1].flags &
> +					 IEEE80211_TX_RC_MCS;
>  			break;
>  		}
>  	}
> @@ -318,7 +323,8 @@ static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
>  	return rate_id;
>  }
>  =

> -static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *w=
dev, struct ieee80211_tx_info *tx_info)
> +static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *w=
dev,
> +						       struct ieee80211_tx_info *tx_info)
>  {
>  	struct ieee80211_tx_rate *rate =3D &tx_info->driver_rates[0];
>  	struct hif_ht_tx_parameters ret =3D { };
> @@ -381,7 +387,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct =
ieee80211_sta *sta,
>  	hif_msg->id =3D HIF_REQ_ID_TX;
>  	hif_msg->interface =3D wvif->id;
>  	if (skb->len > wvif->wdev->hw_caps.size_inp_ch_buf) {
> -		dev_warn(wvif->wdev->dev, "requested frame size (%d) is larger than ma=
ximum supported (%d)\n",
> +		dev_warn(wvif->wdev->dev,
> +			 "requested frame size (%d) is larger than maximum supported (%d)\n",
>  			 skb->len, wvif->wdev->hw_caps.size_inp_ch_buf);
>  		skb_pull(skb, wmsg_len);
>  		return -EIO;
> @@ -392,9 +399,10 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct=
 ieee80211_sta *sta,
>  	// packet_id just need to be unique on device. 32bits are more than
>  	// necessary for that task, so we tae advantage of it to add some extra
>  	// data for debug.
> -	req->packet_id =3D queue_id << 28 |
> -			 IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) << 16 |
> -			 (atomic_add_return(1, &wvif->wdev->packet_id) & 0xFFFF);
> +	req->packet_id =3D atomic_add_return(1, &wvif->wdev->packet_id) & 0xFFF=
F;
> +	req->packet_id |=3D IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) << =
16;
> +	req->packet_id |=3D queue_id << 28;
> +
>  	req->data_flags.fc_offset =3D offset;
>  	if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM)
>  		req->data_flags.after_dtim =3D 1;
> @@ -517,7 +525,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const st=
ruct hif_cnf_tx *arg)
>  		if (tx_count < rate->count &&
>  		    arg->status =3D=3D HIF_STATUS_RETRY_EXCEEDED &&
>  		    arg->ack_failures)
> -			dev_dbg(wvif->wdev->dev, "all retries were not consumed: %d !=3D %d\n=
",
> +			dev_dbg(wvif->wdev->dev,
> +				"all retries were not consumed: %d !=3D %d\n",
>  				rate->count, tx_count);
>  		if (tx_count <=3D rate->count && tx_count &&
>  		    arg->txed_rate !=3D wfx_get_hw_rate(wvif->wdev, rate))
> @@ -554,7 +563,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const st=
ruct hif_cnf_tx *arg)
>  		else
>  			tx_info->flags |=3D IEEE80211_TX_STAT_ACK;
>  	} else if (arg->status =3D=3D HIF_REQUEUE) {
> -		WARN(!arg->tx_result_flags.requeue, "incoherent status and result_flag=
s");
> +		WARN(!arg->tx_result_flags.requeue,
> +		     "incoherent status and result_flags");
>  		if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
>  			wvif->after_dtim_tx_allowed =3D false; // DTIM period elapsed
>  			schedule_work(&wvif->update_tim_work);
> @@ -588,7 +598,8 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee80=
211_vif *vif,
>  		if (wait_event_timeout(wdev->tx_dequeue,
>  				       wfx_tx_queue_empty(wdev, queue, vif_id),
>  				       msecs_to_jiffies(1000)) <=3D 0)
> -			dev_warn(wdev->dev, "frames queued while flushing tx queues?");
> +			dev_warn(wdev->dev,
> +				 "frames queued while flushing tx queues?");
>  	}
>  	wfx_tx_flush(wdev);
>  	if (wdev->chip_frozen)
> =


Ok, for the last changes.

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
