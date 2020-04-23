Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FD61B58BE
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 12:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A64F222F26;
	Thu, 23 Apr 2020 10:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIONe+jm6daj; Thu, 23 Apr 2020 10:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5227231A1;
	Thu, 23 Apr 2020 10:03:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A36AE1BF855
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 10:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9373F862BE
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 10:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqUAS-QDocXj for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 10:03:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700061.outbound.protection.outlook.com [40.107.70.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 571FF85FE4
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 10:03:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZC1FSKec/SoIXHv8MnwnE7nK6VAIaOrk05OMjE6KRvKJ6dPovzAYxfJH9ENx3ba6fTPyVYtn8mFjdNF9/SJ2I1CVeVV01V1WivyVl7o8uIIJk29/BdVTVq6k0QPfZTB12K2mGkT/YLq6lCgwVrRKG7nDQ1kOMPtk8ZQ41RzuUd55x1RF+iIN8ECqAbcTz/nAvFCt+bUqELTVAW7pab66tSDFVnxzqxKKD/U5pAtU5qzUNZ1XxYRZXShMuNX5Ybgs9UHOyaBZ3kdG7JS0aAaNLLZ2rvyDscuZCG5b0ITgazA4T6KMyAYtCIJ4XO34E2aqxGZjE1Rqtabddq1P6c5VKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWqY0Wgksxke7y4w8bkt+dEonX4uYtPMPYjHbqkr9VM=;
 b=d9W60scE/h9GKs3tLNZ/S/19zzMwNKb3vhCjt1NJ260uZFwY1+KcBqVnlOZA3sFSiFFr9ZWaguT6N+n4cxx528/hD2DbpAo7BzoUnydclrgcFwmNuUeVO7mmIFt+YOTyShz9XbY5rMAo74Rsbk3y5TEdv5RatxC2lfJOF9YJ6WV/dEUSb6CpRKg7ABZQVr5vvaUA/E/eVpfRPEpV6jOK+BrDCAo9ra7LSMNHwTyEGqhCQapG54JqvwDJfjRTL/oNCjr2kWO07i7wVNd8xiK7kNaq/oyQWw9Vl4T/JoSupuwSZkRigN20Isn3JWu1MgTVlYL68boiM2fkAxPriKZ3LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWqY0Wgksxke7y4w8bkt+dEonX4uYtPMPYjHbqkr9VM=;
 b=nZTQnz1SuE/Md/Xc98RAvbxBPLDKG8TAwHChr9OmCJcqovdtr+RpDGr6kBEPHkfM4kTJzoImr5c5O2FOkKIf2s3m8/1c015O6mYTxk0bKLN5yG2LxYoxRuOG8LsJtZjeUbdo6w2FhLCT//N+U+w7gIyYDarem3DCakbrdX332pE=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1390.namprd11.prod.outlook.com (2603:10b6:300:22::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 09:29:29 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.020; Thu, 23 Apr
 2020 09:29:28 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH] staging: wfx: cleanup long lines in data_tx.c
Thread-Topic: [PATCH] staging: wfx: cleanup long lines in data_tx.c
Thread-Index: AQHWGMCFqMdP/B3JUUC6zI1I3nAVZaiGcdsA
Date: Thu, 23 Apr 2020 09:29:28 +0000
Message-ID: <2253201.upfRyW1aZW@pc-42>
References: <20200422153900.GA6184@blackclown>
In-Reply-To: <20200422153900.GA6184@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 178ce78d-335b-4b44-2892-08d7e768d27d
x-ms-traffictypediagnostic: MWHPR11MB1390:
x-microsoft-antispam-prvs: <MWHPR11MB1390B4CE754CFC9C00DFC00C93D30@MWHPR11MB1390.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(7916004)(346002)(396003)(136003)(376002)(39850400004)(366004)(66446008)(91956017)(6512007)(4326008)(9686003)(66476007)(64756008)(186003)(66556008)(26005)(6486002)(76116006)(66946007)(33716001)(54906003)(6506007)(316002)(86362001)(81156014)(71200400001)(8936002)(8676002)(2906002)(5660300002)(6916009)(66574012)(478600001)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2gEfpWjJFn60qfYgyJeRziuO0dIO65ICPxAUGjW1UYiQ64XddDL/8bxSWE1DW21CT8vgrCiLba3sVF4rxw3fhi0HzrHPHTFpC5R0MRLRI7/M6LTHcO5xKzxjIa4+6PTFOWPR1P+4tm53e3xuLuM34Z6yGLXwgn/PNF/vxhql9zHJmYWiiN46i8t3GPqVz8CqZXOooqiW8Hhz4Ettp0qIHIwVH6vfmbw7tfsXCzrrZz0eWafjfilmyA50/DMJZkw9lvK7FyGWgxCMD3RMZqVSe7BK9wCme4b6eopj7oxvTIfwH0ySi5MsuS9TFeB17MZrDepvTlz0YSwA92+LnGC/Nyyg5FzID8i3li+5GZTZxWO3sfebNlaQUH2tIHnor9FrE9qP4idjjh6nZFUC2MGUD/lS20owO/se1r4BvUBYG5r/IDjL244YN9fECyV2h+M/LfzYbxWT1UcdwsMsOkceNSA6YigqgYxADCMwlyLcf6wZ6Og2WU7jmY8EMWj+ODTQ
x-ms-exchange-antispam-messagedata: SOiX3SeU/lqPedQdmGqZL76LT5u/HiNRY2QEzGk6iz9Oeqb0Nb+ERHRiQAt7GfsX0uBNjqoliJ6CGyNAtqgp+7FpXbskMnhXqKaEdjc8EwbJqzv6oJMOWZ7JoGAjWUysPlOAgHTyk3wR//JXWjEQfESChIe6nhwZXqMEG69/jgXXHl7P/fwWSHS0Dnm+PrcYG6iJwkEhdDGpPVDG/WFkqjDAA/mbKc21cmz0HQ63gTvKQXqJLtHKPriIXcG1VM8rUikvzmNj1TUlphnbFYDQf+yYeW70we0As/wIkxymowM+unJRuKJUn0nl2J8u5vNBUuM2pL26W62gSs0ZspZAIAuDv+Rt96fp4F7tfBr4aH/06+czzcwB8x7kRs8GHwiHFTXlxbNz1JtQfyZmg4B7QsGaZgAOnR39U6TGiiMaBki02qR8/HajrwrmP+5F8QJk7CNrL/b0ANY8vGN4C4KiTpbTodP1KtH0zJRJLXBBKRnTIyXRChUWmNbO/B7qIqKSGkz2SPUxTmukwX2/nYD1NlOSAk8OLDG6R/tvjnA7bsVkzps8whT9UT07zxfRh/KxsGsFLtmxHt1rWRBvh/AxXG+5wYngbbNuXjx35zLDeXSuuzRkfpiF0jZouENe6L/GzVFerBs3TCZV5Bo/WkFFm8EntwEUPYikZZYFjEHasDfqB2896AYccDIXAHdBnYbCwKApF3i9IW0FLBX66qWYCSMI3zV0odISueYNAwvqEPepQdMGoLMfA/2eeNcqG0wr3hmiPW+FQ/sdaa/twfFosZIbKRYniPiEdq8pqgTpwv4=
x-ms-exchange-transport-forked: True
Content-ID: <BC1F2FA59F0CC24EA218433A0B01B8D3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 178ce78d-335b-4b44-2892-08d7e768d27d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 09:29:28.6968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Djy0P7/WPCuUEtpPfBqkR0y3XEybQx2vbA5eTsdDAiVMbHDxOI7QImyDtD0h8vxr5A3gsycY5wEw4c5iXWTHSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1390
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Suraj,

Thank you for your contribution.

On Wednesday 22 April 2020 17:39:00 CEST Suraj Upadhyay wrote:
> =

> Break lines with length over 80 characters to conform
> to the linux coding style. Issue found by checkpatch.
> =

> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/staging/wfx/data_tx.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index c30e4f5b6e2d..85ad94de20e5 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -165,7 +165,8 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
>                 spin_lock_bh(&wvif->tx_policy_cache.lock);
>                 for (i =3D 0; i < HIF_TX_RETRY_POLICY_MAX; ++i)
>                         if (!policies[i].uploaded &&
> -                           memzcmp(policies[i].rates, sizeof(policies[i]=
.rates)))
> +                           memzcmp(policies[i].rates,
> +                                   sizeof(policies[i].rates)))

hmm... since memzcmp() is called from a if condition, I am not sure that
breaking the line improves the readability. May be you should introduce a
temporary variable instead.

Before that line, I also see a line that exceed 80 columns in
wfx_get_hw_rate() could also address it?


>                                 break;
>                 if (i < HIF_TX_RETRY_POLICY_MAX) {
>                         policies[i].uploaded =3D true;
> @@ -290,7 +291,8 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_ra=
te *rates)
>                 if (rates[i].idx =3D=3D -1) {
>                         rates[i].idx =3D 0;
>                         rates[i].count =3D 8; // =3D=3D hw->max_rate_tries
> -                       rates[i].flags =3D rates[i - 1].flags & IEEE80211=
_TX_RC_MCS;
> +                       rates[i].flags =3D rates[i - 1].flags &
> +                                        IEEE80211_TX_RC_MCS;

Ack.

>                         break;
>                 }
>         }
> @@ -318,7 +320,9 @@ static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
>         return rate_id;
>  }
> =

> -static struct hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *w=
dev, struct ieee80211_tx_info *tx_info)
> +static struct
> +hif_ht_tx_parameters wfx_tx_get_tx_parms(struct wfx_dev *wdev,
> +                                        struct ieee80211_tx_info *tx_inf=
o)

Please, dont't break between 'struct' and name of the struct. In add, in
the rest of the file, there is no line break between the returned type the
name of the function. Let's try to keep it uniform.

>  {
>         struct ieee80211_tx_rate *rate =3D &tx_info->driver_rates[0];
>         struct hif_ht_tx_parameters ret =3D { };
> @@ -381,7 +385,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct =
ieee80211_sta *sta,
>         hif_msg->id =3D HIF_REQ_ID_TX;
>         hif_msg->interface =3D wvif->id;
>         if (skb->len > wvif->wdev->hw_caps.size_inp_ch_buf) {
> -               dev_warn(wvif->wdev->dev, "requested frame size (%d) is l=
arger than maximum supported (%d)\n",
> +               dev_warn(wvif->wdev->dev,
> +                        "requested frame size (%d) is larger than maximu=
m supported (%d)\n",
>                          skb->len, wvif->wdev->hw_caps.size_inp_ch_buf);
>                 skb_pull(skb, wmsg_len);
>                 return -EIO;
> @@ -394,7 +399,8 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct =
ieee80211_sta *sta,
>         // data for debug.
>         req->packet_id =3D queue_id << 28 |
>                          IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)) =
<< 16 |
> -                        (atomic_add_return(1, &wvif->wdev->packet_id) & =
0xFFFF);
> +                        (atomic_add_return(1, &wvif->wdev->packet_id) &
> +                         0xFFFF);

Since the line is already split on '|', I am not sure that adding a break
here improve the readability. Maybe:

         req->packet_id =3D atomic_add_return(1, &wvif->wdev->packet_id) & =
0xFFFF;
         req->packet_id |=3D IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl)=
) << 16;
         req->packet_id |=3D queue_id << 28;

or maybe if you introduce "struct wfx_dev *wdev =3D wvif->wdev;", you would
simplify the things.

>         req->data_flags.fc_offset =3D offset;
>         if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM)
>                 req->data_flags.after_dtim =3D 1;
> @@ -517,7 +523,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const st=
ruct hif_cnf_tx *arg)
>                 if (tx_count < rate->count &&
>                     arg->status =3D=3D HIF_STATUS_RETRY_EXCEEDED &&
>                     arg->ack_failures)
> -                       dev_dbg(wvif->wdev->dev, "all retries were not co=
nsumed: %d !=3D %d\n",
> +                       dev_dbg(wvif->wdev->dev,
> +                               "all retries were not consumed: %d !=3D %=
d\n",

Is this reported by checkpatch? The strings can exceed 80 columns.

>                                 rate->count, tx_count);
>                 if (tx_count <=3D rate->count && tx_count &&
>                     arg->txed_rate !=3D wfx_get_hw_rate(wvif->wdev, rate))
> @@ -557,7 +564,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const st=
ruct hif_cnf_tx *arg)
>                 else
>                         tx_info->flags |=3D IEEE80211_TX_STAT_ACK;
>         } else if (arg->status =3D=3D HIF_REQUEUE) {
> -               WARN(!arg->tx_result_flags.requeue, "incoherent status an=
d result_flags");
> +               WARN(!arg->tx_result_flags.requeue,
> +                    "incoherent status and result_flags");

Ditto

>                 if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
>                         wvif->after_dtim_tx_allowed =3D false; // DTIM pe=
riod elapsed
>                         schedule_work(&wvif->update_tim_work);
> @@ -595,7 +603,8 @@ void wfx_flush(struct ieee80211_hw *hw, struct ieee80=
211_vif *vif,
>                 if (wait_event_timeout(wdev->tx_dequeue,
>                                        wfx_tx_queue_empty(wdev, queue, vi=
f_id),
>                                        msecs_to_jiffies(1000)) <=3D 0)
> -                       dev_warn(wdev->dev, "frames queued while flushing=
 tx queues?");
> +                       dev_warn(wdev->dev,
> +                                "frames queued while flushing tx queues?=
");

Ditto

>         }
>         wfx_tx_flush(wdev);
>         if (wdev->chip_frozen)
> --
> 2.17.1
> =

> =



-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
