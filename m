Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B52524042C
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Aug 2020 11:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ABBB8904A;
	Mon, 10 Aug 2020 09:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KIZGJsTj6XXk; Mon, 10 Aug 2020 09:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AC4488F4A;
	Mon, 10 Aug 2020 09:38:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7561BF40B
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 09:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E38185DC7
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 09:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJhQPKtS-xnd for <devel@linuxdriverproject.org>;
 Mon, 10 Aug 2020 09:38:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2054.outbound.protection.outlook.com [40.107.223.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A7DD85D6C
 for <devel@driverdev.osuosl.org>; Mon, 10 Aug 2020 09:38:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YzE6/dugJtVt7vrra3wxKKJZEnEFxevQdv+I4+gYiBRTBVX0uwgw7Bx7TDUu34vmj0pWbvA6a6Gbp2YUJA5hwo5QT2SxkcQLHS/p7iDamMOTx+kGJtgmTLlocCojs9p+stRvlSH+vHBOyA8cemR+rRE8DCaUh4Ftoc2oUQzzn0aAaN1hSN7uAgdiASQkqEXzzEExbuW0H0/RphzhJxmDbmuG9oj5GdjclIFj4wTxa1N34zZePyirVfDatcJuuPy+1cdN4Oyh2MXzhgQ7LkRXDADQarvp+yWRnwrpvdkoCPF021BRp6w8pPUfDKf/neJEKCQus9V0KmN4ZBOvZK4l5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ii+ac9c9q7UmPFDAoWmwfozi5/Ukey16zEC42n4AcNk=;
 b=hGGaIzUSaSk9NE4ZlsM2bWT5jfwfowFNCc9fRd7GSY66s8l15/o9HdamEEoxO7e+tdvmZZqmop0SWkvBHa4cjIvz1qnK4kfFvEec4XHSjGtRF15JUT8b6lpP9u5fRS9pswP1Uh5MYQV/wPwnbhKrSU6yRZP9enqKD39+BSxKO0YXrLQjdVLosYFCD8tmE+XztjdFG/33UnTJE4HECv3zl5qRafVlLOltJNvRI3XCcUapdqffDWLh289GVqmDc19IxgiJwrnQIGT6S8QPl9fvWBJVnjQuAdxAsLg18MUi+lVE/1EqqtlcGNc2ZIUgy06/ok6g1E8L6M7ukTi/PXXXfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ii+ac9c9q7UmPFDAoWmwfozi5/Ukey16zEC42n4AcNk=;
 b=k07ay8YOKVMgT3L+mux+6GLHCkHMjpqJA1Ti+EJPmL80cBq1GhrYQF7/d22qDWDJLxQBoHiF7V++Mqi1v9PZjOiDm9FQZJPwJrJn3rwny5hod2eMEUr8nKYoYiGF6Vr5jpjtYsfHf1K2aWzX7+2JJ02pVl6Bzm0+ncsskN3d2jI=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3310.namprd11.prod.outlook.com (2603:10b6:805:b9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Mon, 10 Aug
 2020 09:38:40 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3261.024; Mon, 10 Aug 2020
 09:38:40 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Tomer Samara <tomersamara98@gmail.com>
Subject: Re: [PATCH v2] staging: wfx: refactor to avoid duplication at hif_tx.c
Date: Mon, 10 Aug 2020 11:38:33 +0200
Message-ID: <2040746.q8W4dvF0dS@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200805121442.GA31953@tsnow>
References: <20200805121442.GA31953@tsnow>
X-ClientProxiedBy: PR0P264CA0130.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::22) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR0P264CA0130.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.15 via Frontend Transport; Mon, 10 Aug 2020 09:38:38 +0000
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a4c7b78d-17e6-444b-3e0b-08d83d1129a7
X-MS-TrafficTypeDiagnostic: SN6PR11MB3310:
X-Microsoft-Antispam-PRVS: <SN6PR11MB3310DC1587EC2DCB36E05CA993440@SN6PR11MB3310.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:246;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2EVYkwC2zAix4kkb7JTNlojl+L46TsAMhKgCiwKHz8X7P6GHYht8pOi5ixuGYEbNpZGGt2XBzn2CtKXVlQ6s9f4O/Iae4ZwSma2zxbc2yqTiLwxmQZ/uCAkYzW//EdUSMZ8iho/kEqWewYDZIj3sWv5j3ki9D8Hz9SnReauci5Udrgs2pZplJTn/YF61VLKSiEDUURH+KvNXLdwmL5jFeYwBNVy/ZCeSeCIqkqrA2lsz4PCTZvM+xoCbAxnG+Xl6ckawNfbZ5VuXqpvCGgiL+JsWlj5UF7CNcbGAlwV6B0M+1zDfCtZCyNYFDI7u3TUWLA0OIIojEXc0MLpXgcJUB4McU6xZKx4dJPhKragdOUwk+FX7aGxgYvYaeIdvcm3s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(376002)(39850400004)(346002)(136003)(956004)(83380400001)(6916009)(6506007)(36916002)(52116002)(86362001)(6512007)(9686003)(6486002)(8936002)(4326008)(16526019)(186003)(33716001)(66556008)(66574015)(316002)(5660300002)(66946007)(66476007)(8676002)(26005)(6666004)(2906002)(478600001)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: MpvPwqpFyoGEkKrr69biMAzzLFy7mqQvRNDcvqZlI/9CaK85kSRVs9nNAvhRGjBXmhDX+mD0yDenGt6KJx1M8cc57hDSGSTDIHlWpTmbfW8WZ8GGDd8m3lAibA2nFAdkAeVPad8NWrcQxkLjTuATtcOstgPkOs5OiNzYXKGJSEwEGHeT4oWgtDOHauRpv7K8k4F5ZgaYF1XEUhekmQJ6Of1IReaI7gdOZCUBpVt76nxGX3fyExXbYFNFnBmUi8kIuPMbKUk+g4sNQ6WgLzSCSb73SdA9iyd4+IKvSPGmjjXZV3h1ee0/2ZXDkRxfjP16Awhb/BzLN512DMd6CBNX5btN9yf42j4Fe877XbbchnrAnTSgVFJlaQHptgmcLpMit4mRNxbuBNapkvvlSUE+WgbpQ7IlzhekdAaZE8SlheVxHO2S+d4xl0JLGKX7CrsRBD1O3JeZClEEv8DyyZ71bJmLw/6eMBx/1wNwAa707ltbezMMu1quLIUOG3GBo/TKebMmyWqHhBuDQGfxIyab2EpvbYmkdWSTA78mi5j5GbTQsZS5rCIfWFGg6SE1v6Udv8nb/Zja2cYSqxH4o+JOccrQlSGtl/dzmAlLTq9qTfUJKFYU3dXj7nWifdo1ZKZV/D3pqzokz84QtwrP84syqg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c7b78d-17e6-444b-3e0b-08d83d1129a7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2020 09:38:39.8298 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IFQQRfSKHQ5b6vU4+ee0bJa+JwmPf94UrwRG+a+dazkpvOIo/TSVyzS2JrHS/ghWobcmtEaQWNbF8sV5mvkq9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3310
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Tomer,

On Wednesday 5 August 2020 14:14:42 CEST Tomer Samara wrote:
> =

> Add functions wfx_full_send(), wfx_full_send_no_reply_async(),
> wfx_full_send_no_reply() and wfx_full_send_no_reply_free()
> which works as follow:
> wfx_full_send() - simple wrapper for both wfx_fill_header()
>                   and wfx_cmd_send().
> wfx_full_send_no_reply_async() - wrapper for both but with
>                                  NULL as reply and size zero.
> wfx_full_send_no_reply() - same as wfx_full_send_no_reply_async()
>                            but with false async value
> wfx_full_send_no_reply_free() - same as wfx_full_send_no_reply()
>                                 but also free the struct hif_msg.
> =

> Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> ---
> Changes in v2:
>  - Changed these functions to static
> =

> drivers/staging/wfx/hif_tx.c | 180 ++++++++++++++++-------------------
>  1 file changed, 80 insertions(+), 100 deletions(-)
> =

> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 5110f9b93762..17f668fa40a0 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -40,7 +40,7 @@ static void wfx_fill_header(struct hif_msg *hif, int if=
_id,
> =

>  static void *wfx_alloc_hif(size_t body_len, struct hif_msg **hif)
>  {
> -       *hif =3D kzalloc(sizeof(struct hif_msg) + body_len, GFP_KERNEL);
> +       *hif =3D kzalloc(sizeof(*hif) + body_len, GFP_KERNEL);

This change is not related to the rest of the patch. It should probably be
split out.

>         if (*hif)
>                 return (*hif)->body;
>         else
> @@ -123,9 +123,39 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_ms=
g *request,
>         return ret;
>  }
> =

> +static int wfx_full_send(struct wfx_dev *wdev, struct hif_msg *hif, void=
 *reply,
> +                        size_t reply_len, bool async, int if_id, unsigne=
d int cmd,
> +                        int size)
> +{
> +       wfx_fill_header(hif, if_id, cmd, size);
> +       return wfx_cmd_send(wdev, hif, reply, reply_len, async);
> +}

This function takes 8 parameters. Are you sure it simplifies the code?

In add, it does two actions: modify hif and send it. I would keep these
two actions separated.

> +
> +static int wfx_full_send_no_reply_async(struct wfx_dev *wdev, struct hif=
_msg *hif, int if_id,
> +                                       unsigned int cmd, int size, bool =
async)
> +{
> +       return wfx_full_send(wdev, hif, NULL, 0, async, if_id, cmd, size);
> +}

Does it make sense to have a parameter 'async' to
wfx_full_send_no_reply_async()? It is weird to call this function with
async=3Dfalse, no?

> +
> +static int wfx_full_send_no_reply(struct wfx_dev *wdev, struct hif_msg *=
hif, int if_id,
> +                                 unsigned int cmd, int size)
> +{
> +       return wfx_full_send_no_reply_async(wdev, hif, if_id, cmd, size, =
false);
> +}
> +
> +static int wfx_full_send_no_reply_free(struct wfx_dev *wdev, struct hif_=
msg *hif, int if_id,
> +                                      unsigned int cmd, int size)
> +{
> +       int ret;
> +
> +       ret =3D wfx_full_send_no_reply(wdev, hif, if_id, cmd, size);
> +       kfree(hif);
> +       return ret;
> +}

One more time, sending the data and releasing are unrelated actions.
Indeed, it saves a few lines of code, but is it really an improvement?

> +
>  // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't repl=
y to any
>  // request anymore. We need to slightly hack struct wfx_hif_cmd for that=
 job. Be
> -// carefull to only call this funcion during device unregister.
> +// careful to only call this function during device unregister.

Not related to the rest of the patch.

[...]

As it stands, I think this change does not improve the code. Obviously, it
is a subjective opinion. What the other developers think about it?

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
