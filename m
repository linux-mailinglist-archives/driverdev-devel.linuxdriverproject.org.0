Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4D92402A6
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Aug 2020 09:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDC83863DB;
	Mon, 10 Aug 2020 07:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7G5RVfTok8o; Mon, 10 Aug 2020 07:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1EE1863DC;
	Mon, 10 Aug 2020 07:34:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E30341BF476
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 07:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D740520448
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 07:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BRo5c5pcHi1G for <devel@linuxdriverproject.org>;
 Mon, 10 Aug 2020 07:34:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2086.outbound.protection.outlook.com [40.107.93.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A99F20416
 for <devel@driverdev.osuosl.org>; Mon, 10 Aug 2020 07:34:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oJMjZZQ7j18Db7Ad9OM6A1JYz0Xm+ZWbQZzcVGkCsl7HL03Tj2SG5/pFKZlbkbIdmn0ts1FjMErjHTSjZvbvnuh2BiWamZ7Jz/GBipJWU/haB8cLB/yt8BkoMUdzEJUTKtmPsL4Yy7wWh2+xqPjc6spFsNRyPxnJhIyQcllyq7fzaAYck9jwjhq3ZWytn+4Ux3wvHHi7GyYZleGt/Zla1Ad3Y4cN8hLd2CRsTkAu2cBqHjkbwebiSCUvrOETz4n76qidPKXYvrTnDLvfOUTgdlRXfZz7LaToO6mQlZp6kywM2WxJHAtiYhUlsNuEYG4mW4N5BE9rrOlxhoV67WImbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOFHOyDq+7MDCJdGvbNvtVYuGDUS/IBPOKJaBsLMBmk=;
 b=Hn8gWQhK2hm9aQIa08CR2wT7449tsON23SOdLyRlY4/AoGuFJHWko6lKqKLhfWkMkM/4iJEba05wTvQzm5pVVfMYXuR7v3d7fQzIHDJsziOTSaHiAL79PYci34ht5v8vVtVPiiRrTaDfc6x9TVrUahvD0NYix2zTtxfLiWkWxQQQoNs6yDQ5tu0rch9rGTXTzf8CT7gWOVb3G6gK+y081vF3wzhqTNNaNZ/ZyGm/VS6e+yujlgLNT6JcC2jqggCasAch75/pBeDg7E2fOUwxSS+Tp/7JMkbBTg6jEINHhBewikz8s+YdS32/Ecmuc8ndG1d9FLMif0A6WFkiCVbz2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOFHOyDq+7MDCJdGvbNvtVYuGDUS/IBPOKJaBsLMBmk=;
 b=JIiP9egpawAos4M4iUBYC1u09SN3NXWPXEF28pJbsLTgZtSosZM4BFnJ9tMceJO3/8yj9TMELVzKadMlgabhm7C52kcflwB24EhBlh5PsbUdS8JMPVenKgwgEyctJU4MFKZc7GQR6Zz6IA623OE93YYgR+pIs8hLQ6XRdsoZh+w=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19; Mon, 10 Aug
 2020 07:34:15 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3261.024; Mon, 10 Aug 2020
 07:34:15 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next][V2] staging: wfx: fix a handful of spelling mistakes
Date: Mon, 10 Aug 2020 09:34:08 +0200
Message-ID: <1666411.QAX1JtfOtW@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200806104701.46123-1-colin.king@canonical.com>
References: <20200806104701.46123-1-colin.king@canonical.com>
X-ClientProxiedBy: PR1PR01CA0020.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::33) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR1PR01CA0020.eurprd01.prod.exchangelabs.com (2603:10a6:102::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19 via Frontend
 Transport; Mon, 10 Aug 2020 07:34:13 +0000
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b21d1d9c-1710-45db-5e6a-08d83cffc83a
X-MS-TrafficTypeDiagnostic: SA0PR11MB4592:
X-Microsoft-Antispam-PRVS: <SA0PR11MB4592BF7D72289B30FF84DCA093440@SA0PR11MB4592.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:820;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p8MX57p19I64qSfOaiQHriIZwe2M/SNXBEaDnzDjUDgTtXeqlFaftiI0wgVjW1SSXTEu/VtaKyBB+Hj0fGLqqZy7ZrioBd1yERcpweEmuWK1k81w8cSBofl/fhJZ/zP2oWt/ej9rKCQjs3bC5sw5K9OvvH2sJfanzmejuVayDrOH56mFPuM2xA8j3/vCUGUY7n+npd2KxehnOhlxbCGk67VI6ERhiml95P5Z10seoGB8fqa+EUDMT3e/2d8zEAeqX07LbBNz97j/RQ8OBQlssQ3xtxAH9zeVwiIG9w1J7OzufsV6PXNwmPLzpKRjanA/Wd+gQ/vSSa8xR+VuCfx0F/reyicMyb0D8KIit6Ryqh7G0xD8PuAgYip923TRV/bL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(376002)(136003)(366004)(346002)(396003)(8936002)(8676002)(478600001)(83380400001)(316002)(33716001)(66574015)(110136005)(6486002)(6666004)(66476007)(66556008)(66946007)(4326008)(36916002)(956004)(52116002)(16526019)(186003)(2906002)(6506007)(26005)(6512007)(9686003)(5660300002)(86362001)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: /PukvFU2BNmEzSZUlOdyifa9GPIIks6XaYoQ8xyFp8eQXdCy8IQF2ZCEUn4IV+C0NmuFd67pX26C1/Vb5OMqhg93LcaI2snG2NKDsLu8FZW3mC++rbaa1o+mZm+NB2iWbP2C8fLT8Si3ENPwvqohGqpf9Cy6bz0AL7RcpZ4H/W/YZwicFTYZ+TWP4O7LiE+mKkbwBxeYFro2IbmhTiZuWqnXPMybNj+F+l8ZU8FibQ65jYTL1oqKTTmCxIp/y3QQOzxhIyTGQo6BLRqQUl7csUCK5Ie6ay04r0GMgRzqIqDM6f+aMO5G/WJkQ1pxJgbUhjel0BBD8B+orErHaz0+UbbuMMisRLLJO127KoTthKIB8347qUMZYPF3yj7AwDrc3XKMpL2GJ56sJancEMkcziu2Dl8VTYDOJ2+qGQaNJOfEi2hrxPOaAiXcVrUOa6+Ox+nJxEf9MiFgb3kwWsIzBwRC7+Ypxl7pGXR+/VKlG3cH82uM2YQuNz5KMXwC9b1wiI8yF9fWrTKZ8csDPGejNZn/FWz+0L8EKx19iTYfqIG5nyiH3AWwRRtqj/IutLqLMnhgah8mBRbJ18ikrmy0Wi5Bp8vd2hDGlZzB8O2apoAKG+OGtg/p5Sd4VoDB3DPs3TtRYXrGmNGEUfRNPtl3Zg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b21d1d9c-1710-45db-5e6a-08d83cffc83a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2020 07:34:14.9109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O/ETLIRNdzik+jGMcJdQvHSAr4lROc45RGcSx1Iz8os/Bld/HzspO+TpxO5zScg0SkTctpbrqoKcZWv8r8ru7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thursday 6 August 2020 12:47:01 CEST Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> =

> There are various spelling mistakes in comments and error messages.
> Fix these.
> =

> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
> =

> V2: add in some more fixes as spotted by Randy Dunlap
> =

> ---
>  drivers/staging/wfx/data_rx.c | 2 +-
>  drivers/staging/wfx/data_tx.c | 2 +-
>  drivers/staging/wfx/debug.c   | 6 +++---
>  drivers/staging/wfx/hif_rx.c  | 2 +-
>  drivers/staging/wfx/hif_tx.c  | 4 ++--
>  drivers/staging/wfx/main.c    | 2 +-
>  drivers/staging/wfx/main.h    | 2 +-
>  drivers/staging/wfx/sta.c     | 2 +-
>  8 files changed, 11 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
> index 6fb078880742..7fcbbfc53416 100644
> --- a/drivers/staging/wfx/data_rx.c
> +++ b/drivers/staging/wfx/data_rx.c
> @@ -73,7 +73,7 @@ void wfx_rx_cb(struct wfx_vif *wvif,
>         if (arg->rx_flags.encryp)
>                 hdr->flag |=3D RX_FLAG_DECRYPTED;
> =

> -       // Block ack negociation is offloaded by the firmware. However,
> +       // Block ack negotiation is offloaded by the firmware. However,
>         // re-ordering must be done by the mac80211.
>         if (ieee80211_is_action(frame->frame_control) &&
>             mgmt->u.action.category =3D=3D WLAN_CATEGORY_BACK &&
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 3acf4eb0214d..41f9afd41e14 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -234,7 +234,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_ra=
te *rates)
>         int i;
>         bool finished;
> =

> -       // Firmware is not able to mix rates with differents flags
> +       // Firmware is not able to mix rates with different flags
>         for (i =3D 0; i < IEEE80211_TX_MAX_RATES; i++) {
>                 if (rates[0].flags & IEEE80211_TX_RC_SHORT_GI)
>                         rates[i].flags |=3D IEEE80211_TX_RC_SHORT_GI;
> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index 3f1712b7c919..99c53e1afece 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -267,7 +267,7 @@ static ssize_t wfx_send_hif_msg_write(struct file *fi=
le,
>         if (count < sizeof(struct hif_msg))
>                 return -EINVAL;
> =

> -       // wfx_cmd_send() chekc that reply buffer is wide enough, but do =
not
> +       // wfx_cmd_send() checks that reply buffer is wide enough, but do=
es not
>         // return precise length read. User have to know how many bytes s=
hould
>         // be read. Filling reply buffer with a memory pattern may help u=
ser.
>         memset(context->reply, 0xFF, sizeof(context->reply));
> @@ -299,8 +299,8 @@ static ssize_t wfx_send_hif_msg_read(struct file *fil=
e, char __user *user_buf,
>                 return ret;
>         if (context->ret < 0)
>                 return context->ret;
> -       // Be carefull, write() is waiting for a full message while read()
> -       // only return a payload
> +       // Be careful, write() is waiting for a full message while read()
> +       // only returns a payload
>         if (copy_to_user(user_buf, context->reply, count))
>                 return -EFAULT;
> =

> diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
> index cc7c0cf226ba..1d32973d8ec1 100644
> --- a/drivers/staging/wfx/hif_rx.c
> +++ b/drivers/staging/wfx/hif_rx.c
> @@ -118,7 +118,7 @@ static int hif_keys_indication(struct wfx_dev *wdev,
> =

>         // SL_PUB_KEY_EXCHANGE_STATUS_SUCCESS is used by legacy secure li=
nk
>         if (body->status && body->status !=3D HIF_STATUS_SLK_NEGO_SUCCESS)
> -               dev_warn(wdev->dev, "secure link negociation error\n");
> +               dev_warn(wdev->dev, "secure link negotiation error\n");
>         memcpy(pubkey, body->ncp_pub_key, sizeof(pubkey));
>         memreverse(pubkey, sizeof(pubkey));
>         wfx_sl_check_pubkey(wdev, pubkey, body->ncp_pub_key_mac);
> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 5110f9b93762..3b5f4dcc469c 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -78,7 +78,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *=
request,
> =

>         wfx_bh_request_tx(wdev);
> =

> -       // NOTE: no timeout is catched async is enabled
> +       // NOTE: no timeout is caught async is enabled
>         if (async)
>                 return 0;
> =

> @@ -125,7 +125,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg=
 *request,
> =

>  // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't repl=
y to any
>  // request anymore. We need to slightly hack struct wfx_hif_cmd for that=
 job. Be
> -// carefull to only call this funcion during device unregister.
> +// careful to only call this function during device unregister.
>  int hif_shutdown(struct wfx_dev *wdev)
>  {
>         int ret;
> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index 11dfa088fc86..4263f912760b 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
> @@ -384,7 +384,7 @@ int wfx_probe(struct wfx_dev *wdev)
>         err =3D wfx_sl_init(wdev);
>         if (err && wdev->hw_caps.capabilities.link_mode =3D=3D SEC_LINK_E=
NFORCED) {
>                 dev_err(wdev->dev,
> -                       "chip require secure_link, but can't negociate it=
\n");
> +                       "chip require secure_link, but can't negotiate it=
\n");
>                 goto err0;
>         }
> =

> diff --git a/drivers/staging/wfx/main.h b/drivers/staging/wfx/main.h
> index c59d375dd3ad..2457cb595b0f 100644
> --- a/drivers/staging/wfx/main.h
> +++ b/drivers/staging/wfx/main.h
> @@ -19,7 +19,7 @@ struct wfx_dev;
>  struct hwbus_ops;
> =

>  struct wfx_platform_data {
> -       /* Keyset and ".sec" extention will appended to this string */
> +       /* Keyset and ".sec" extension will be appended to this string */
>         const char *file_fw;
>         const char *file_pds;
>         struct gpio_desc *gpio_wakeup;
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 4e30ab17a93d..ad63332f690c 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -214,7 +214,7 @@ static int wfx_get_ps_timeout(struct wfx_vif *wvif, b=
ool *enable_ps)
>         if (chan0 && chan1 && chan0->hw_value !=3D chan1->hw_value &&
>             wvif->vif->type !=3D NL80211_IFTYPE_AP) {
>                 // It is necessary to enable powersave if channels
> -               // are differents.
> +               // are different.
>                 if (enable_ps)
>                         *enable_ps =3D true;
>                 if (wvif->wdev->force_ps_timeout > -1)
> --
> 2.27.0
> =

> =


Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
