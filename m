Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 910931CF157
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 11:17:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BF4B86F54;
	Tue, 12 May 2020 09:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ByzY5aOkfSG; Tue, 12 May 2020 09:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2825285683;
	Tue, 12 May 2020 09:17:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90DAA1BF28C
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 09:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BFF7881BB
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 09:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXCx+3bJ81qK for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 09:17:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760070.outbound.protection.outlook.com [40.107.76.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5819D8743E
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 09:17:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8aHGadc+QjL6av5LiaCgg1B/nnm/7rjFTF1oeT0ET9tgAPPH+Qvvm7EwFxI5cllGnMc0yDvq4u0c0O1OGLEOf5m9XrXZ/LZu+8rJzQyzBKPbun0hA//4C7YyPx09HGokrOdc4Gui30io/j7vtHbFf2HEvn+ajK3TqnqNx1oAJo9dr+TAgfkvPkpvqpVCrzRwuerLuxQQqiGc5l4qNxseF6MbgmU5oEduK/Vv8acMk9+2xU6Q6eapnQqWhEXqQhj+rBRHwFX1f2AnmE+5B0QJkr+oe+XP5Vg6k/dsVP8OH/3DgImtUczQ4BjFwWCtrgGaKts0DtG49QnExU+iIrQ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQIZYYMUaZOPQPhubg++Qf1Qbaw9EpTpFqQ06SmBOKk=;
 b=TArrBnEkzjDvUmzgHTxgcNcvNBXhkr4+5qyiB3t/vmdQb9+dkPIPIW6LJa9lFndETvFbZZn0svoCIfd1fihdIiY+unT4cmrLQzJ921n6WQJ1TjV5Krqro2XHK2G9X+mIbuDgKEUMDU9biI6cknz7aYWdDpGXIfr2bABupFtowxmqMFT8qpAO8I2n3q7bzRj4/g0af0ilI6DTsP4zfh5zxOrOOrxuMMgRoy2msDdu8irJIAlb9CQS0JXujJzb1jPqF+XPYQaBssoxLRhpXTWdJWX9NSmBOhF2xjPZ+y0hRUpnYUeZo5brra0Jo8vAZSmYurMT927Z65mz4OvcejmHoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQIZYYMUaZOPQPhubg++Qf1Qbaw9EpTpFqQ06SmBOKk=;
 b=iTR2dBwwzQ8e+ux/pLeIb2s1gXEBDWLzqShiDlCwk7A262dczu7JfM/G08+vOyvWniqG8KWyLIjnkUGHA3r4KyD09dOlR+YBKpQIrDYbQJtUOxw69awZ2Iz57wOuOdeeCqpIvXfuhUK0HpyDazZtKIYhzOJa2K7RPbO63QZCtAY=
Authentication-Results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1726.namprd11.prod.outlook.com (2603:10b6:300:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 09:03:21 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 09:03:21 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: wfx: unlock on error path
Date: Tue, 12 May 2020 11:03:16 +0200
Message-ID: <2556639.E3UUflA7rB@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200512083656.GA251760@mwanda>
References: <20200512083656.GA251760@mwanda>
X-ClientProxiedBy: SN2PR01CA0013.prod.exchangelabs.com (2603:10b6:804:2::23)
 To MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (82.67.86.106) by
 SN2PR01CA0013.prod.exchangelabs.com (2603:10b6:804:2::23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Tue, 12 May 2020 09:03:20 +0000
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96b693e6-92a5-4d00-61de-08d7f65351c4
X-MS-TrafficTypeDiagnostic: MWHPR11MB1726:
X-Microsoft-Antispam-PRVS: <MWHPR11MB1726D856F0DE368D4DA9A59393BE0@MWHPR11MB1726.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e6RFzfZ93BJvuZeRsK8A2mMF4GVwQaQ+3N6Tf6bewa6oMaGDAzvfH2SGwe5PW0vW2/KLj0ORYUMIXktwEYqcYDvt17my5dTFfnCmr9X6ijXgSvd9Y2WEhrQ2Efq/FdQtIh2/MljvbOAM5B7fdR5DkTOLRvQM4JLKSa6k11T58Azt/sVD+luzZbRFTBEA93zVIyUwxxEpUSSxVx+ic/pkU3eHFqa5WKEXyZghuWYxAjExYwVHBhHihDTtIFy693PybuRsB4X3NH0YT+FxcYdPQNV3ws6+BeGHZlqiKDwVq2VM41nyc73H1QvmqWACg7YOUMcbuTDTb/kfjKEM6pl0I5bGuURwI0MtechO6XeONpkrKElkuaA9fY1qMMuC89rsmyNUjFxQcPZalzgIF/3GwPpVLqpdwWRCtFiDzHMl7/YyZ//atyn9pnTFv+i3/sDrFhwyJaC4GpfEBGBFwqgaHJrOssRQoHgpqXrKynNyWNX4pD9RbfCXXiq0PbkEz9ju+x65Lo1vdAuTjlEBBPfBJR42eq4zzAQERIOXq4YCP7TxMKj7RiZ3Gh13Bwr5TcWY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(39850400004)(376002)(136003)(33430700001)(6506007)(6916009)(6512007)(36916002)(4326008)(86362001)(66476007)(66556008)(6666004)(66946007)(478600001)(16526019)(6486002)(66574014)(33440700001)(33716001)(316002)(9686003)(8936002)(5660300002)(8676002)(2906002)(26005)(186003)(52116002)(956004)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: XsZSOD/Ubz2G0Hxozse3EJ8EzPxBSZfsEsiMJqQnN6MZEYG8iPql1AzGw9Vzh9uGdXHxt/dvI7SPJJ3E5uIyhkNVldhDRzO0IkPAU5g51r5UhWNny8/R5CJt+PJxyspxc5U8yKgDbPn9FPus71bmXZg4liFVoYYrUqg3INS66WQxhqokbR2dElCPiuVB4UCvDdU09YoPE0mkmGP04Sg+0b66kIFE+ZYc5J5KRRgNtBewLMzsDYXpb1qSpOfbFLb4DDrE0uVQ7iSr9NvXHsZMa4qkxEqOgogJbmPD98noiAoJn88+C2lJ5Apw9IVG+rsvvK9ZuPJyUFLj7APPOmF76yW/STbHGOs+hrG+Ruh0zsDexSpIz/3m42ERUokQeUky1Zw96gDdO3gClR7ODC72XPoS9gbzPMNhI6/l0yFCUDQi3NyR+cBCG/x10TiyKiIEFVxtKJTJwC4eI1Y4M95eQSSLdCkX0naXPGpIKBNLBiA=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b693e6-92a5-4d00-61de-08d7f65351c4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 09:03:21.3746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VcHsNrcRX5YOwt7Nh0SXYReUyd4TQPuKvx4yg98D1bA49C57rCqvD3BU2w+f8pL/vXoPNLotol/dIqn9c/JyUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1726
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 12 May 2020 10:36:56 CEST Dan Carpenter wrote:
> =

> We need to release the tx_lock on the error path before returning.
> =

> Fixes: d1c015b4ef6f ("staging: wfx: rewrite wfx_hw_scan()")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> From static analysis.  Not tested.
> =

>  drivers/staging/wfx/scan.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/wfx/scan.c b/drivers/staging/wfx/scan.c
> index 76761e4960dd7..eff1be9fb28f8 100644
> --- a/drivers/staging/wfx/scan.c
> +++ b/drivers/staging/wfx/scan.c
> @@ -57,8 +57,10 @@ static int send_scan_req(struct wfx_vif *wvif,
>         wvif->scan_abort =3D false;
>         reinit_completion(&wvif->scan_complete);
>         timeout =3D hif_scan(wvif, req, start_idx, i - start_idx);
> -       if (timeout < 0)
> +       if (timeout < 0) {
> +               wfx_tx_unlock(wvif->wdev);
>                 return timeout;
> +       }
>         ret =3D wait_for_completion_timeout(&wvif->scan_complete, timeout=
);
>         if (req->channels[start_idx]->max_power !=3D wvif->vif->bss_conf.=
txpower)
>                 hif_set_output_power(wvif, wvif->vif->bss_conf.txpower);
> --
> 2.26.2
> =

> =


Good catch!

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
