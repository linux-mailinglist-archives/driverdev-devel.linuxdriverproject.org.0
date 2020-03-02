Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90140175F28
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E85E385A6A;
	Mon,  2 Mar 2020 16:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YTAKhrfVVWO3; Mon,  2 Mar 2020 16:05:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFAC985660;
	Mon,  2 Mar 2020 16:05:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E70081BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF39785660
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UE_F5wTpRf88 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:05:35 +0000 (UTC)
X-Greylist: delayed 00:15:41 by SQLgrey-1.7.6
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150048.outbound.protection.outlook.com [40.107.15.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF30885450
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:05:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPrsIr2m9B/UOvcNwCt66viGQk/CBpESYhdTF1OjZnYv/bXtGuyuEUS/SgtqSYi7fyG0kunapZZlLFqTVnh7xkvgSJHJDboiKuGfG7+d+KhqXL7xQxCXWHrJOOzyuofqpSD7Kgqe17jVDAfo/dlqm3UOospWZFaWHIe18G0VHpB8JGrhYEqqc8mSqW/C4VBe65xEZVyJdjz5jA/+KAEn46gIpuK6ygm+HrB1kwgMbe88pdTht6YODtXeRcTAcjSTQpfi654NglNxlahVacWz4SKNiw8yK3IxMgehbHZ2Omv9hqh1dbBjC6O2HnFGkX377Vw2Gx/ME3AZfeqk2ZtW5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XrCVrKRdszLchifnI16Q3rKcxsftc/c/9A5aTnYlrVc=;
 b=Rn/6QHnJWWKph51WviLeh2dS6DwdRprGM3CCcaWQOakO9U3C+XWgUiSsiQQ1kdV4QZYBfekAXag3KnMRz3p17ax227W4yAN9Hu/H7SFhokdNRsixeWHI9SaBAZmhzdw6hfTLe6cC1Oty9ulOPlk6zYD8VBPvGmvRHisWKRJh63qARQjhdM6ym04SOtG9KUCSmgOb+caCws2DLAEKQkxNLNS165kK70YoQAQBTjd3+/Gf2OSdarcagOZCvEyX9a+9iTh4x9OkD4BCT7l9hWjKidU0IqyUaurtJGpfE75BTHTzu8YnQpBQ1U9fJ/vaP616bXWLk6n1DgEsJjULUiKGuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XrCVrKRdszLchifnI16Q3rKcxsftc/c/9A5aTnYlrVc=;
 b=egb8uYMKB5iZqAziJlHeHvdwvBDdQuYHdeJQDC0SpGzqZ8Bw3Yehdy/CSTdM3AP5Dpeu97xxSr/OdrEsXpVFgIlEQKRGA3hM/1YbCW0WsXCoL3ljwTOFnapDZ9eledMwF/uw6s3oQ/skga0uvfwlUqwH2ad+1nChZJ6eCpQ8toM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4284.eurprd08.prod.outlook.com (20.179.44.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Mon, 2 Mar 2020 15:49:51 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::5084:aeb:3ba5:c5c1]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::5084:aeb:3ba5:c5c1%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 15:49:51 +0000
Date: Mon, 2 Mar 2020 15:49:49 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Remove unnecessary local variables
 initialization
Message-ID: <20200302154949.GB11315@qd-ubuntu>
References: <20200301135028.11753-1-oscar.carter@gmx.com>
Content-Disposition: inline
In-Reply-To: <20200301135028.11753-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P265CA0207.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::27) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from qd-ubuntu (89.21.227.133) by
 LO2P265CA0207.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:9e::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15 via Frontend Transport; Mon, 2 Mar 2020 15:49:50 +0000
X-Originating-IP: [89.21.227.133]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1bedc9fc-090c-47bc-2d41-08d7bec157e0
X-MS-TrafficTypeDiagnostic: DBBPR08MB4284:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4284C66C34D741EA5AC7CE27B3E70@DBBPR08MB4284.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 033054F29A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(39830400003)(346002)(199004)(189003)(6496006)(52116002)(54906003)(66556008)(66946007)(186003)(4326008)(9686003)(5660300002)(81166006)(8936002)(81156014)(316002)(956004)(44832011)(16526019)(26005)(8676002)(66476007)(508600001)(1076003)(55016002)(33656002)(33716001)(86362001)(2906002)(6916009)(518174003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4284;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n3STBgR1COInKthQ4dJYZLQVqe23tPsrlNjZAjlUMCwwctsPwaQtt7dvgGW60G8zIFZDjt9/fIbGqGnt0Z3bSGDBlqyPucumQLza60lfqMycmo/0RjWZaF1AXJ4iF4QZVLSI5zEGRUWrsu0549IR1dSDwTVGGi61qdGeNPPPZkdQ+1WEUw6SusvVoe/etGOm7A1D1z8exJZv8JYvC0GL38DlUgLZnTz8amQb+7RJopIrT0yVUSnxwgCfOuYUfh0wjkfet4GDyEC3WfvXCVqVKpTNIrEP8F0F+BTk1ZkCwLWNCh2EKDHczRq+fpMci8L8IF0fjRz0Pn+iz+FzN+6LubC/g3xjy2Dbmx+mSxA+hiUMMkaC4qDFaKCKCl9sAwnOm8JImalERNDt1lPlqWFrz9UC1Dgng0qP3T34Y9O4IYyO/McNMAZunvGYJbnmvbm98UD+hyU+j2hKxgIbrqTsw10ufEaRq4i84eB3fiqzb85O/Xl3kfgbsOHSCK5feIBI
X-MS-Exchange-AntiSpam-MessageData: GfsAgzEB1UzuYOS9Ey7YdP+/jRFOmp0zyAy8muOPLbZulgtugsNov4R2wrKC6wLEXrC1Hau7qmyA896ZQgCkOG8nmHphlZ9f5ECQf5jjLGMKZEJ4rvilP8bpxdWkTFZx3OeFi7ZFgx+XoSeZdhW4sg==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bedc9fc-090c-47bc-2d41-08d7bec157e0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 15:49:50.9998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YkDKz8auORk9PDaBGrrj9GN3KE+oAMYb89EDzDHcJLyLGiGI+2w/OV0ghl58TvFB1KlVLNb+9za/bLXse6aBQ0HtDU+U0hGj6yQ5Gv54o98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4284
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 01, 2020 at 02:50:28PM +0100, Oscar Carter wrote:
> Don't initialize variables that are then set a few lines later.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 701300202b21..bfeb5df896fe 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -109,7 +109,7 @@ static void vnt_set_options(struct vnt_private *priv)
>   */
>  static int vnt_init_registers(struct vnt_private *priv)
>  {
> -	int ret = 0;
> +	int ret;
>  	struct vnt_cmd_card_init *init_cmd = &priv->init_command;
>  	struct vnt_rsp_card_init *init_rsp = &priv->init_response;
>  	u8 antenna;
> @@ -435,7 +435,7 @@ static void vnt_free_int_bufs(struct vnt_private *priv)
> 
>  static int vnt_alloc_bufs(struct vnt_private *priv)
>  {
> -	int ret = 0;
> +	int ret;
>  	struct vnt_usb_send_context *tx_context;
>  	struct vnt_rcb *rcb;
>  	int ii;
> @@ -528,7 +528,7 @@ static void vnt_tx_80211(struct ieee80211_hw *hw,
> 
>  static int vnt_start(struct ieee80211_hw *hw)
>  {
> -	int ret = 0;
> +	int ret;
>  	struct vnt_private *priv = hw->priv;
> 
>  	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;
> @@ -798,7 +798,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
>  	struct vnt_private *priv = hw->priv;
>  	struct netdev_hw_addr *ha;
>  	u64 mc_filter = 0;
> -	u32 bit_nr = 0;
> +	u32 bit_nr;
> 
>  	netdev_hw_addr_list_for_each(ha, mc_list) {
>  		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
> @@ -973,7 +973,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
>  	struct vnt_private *priv;
>  	struct ieee80211_hw *hw;
>  	struct wiphy *wiphy;
> -	int rc = 0;
> +	int rc;
> 
>  	udev = usb_get_dev(interface_to_usbdev(intf));
> 
> --
> 2.20.1
> 

Looks good.

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
