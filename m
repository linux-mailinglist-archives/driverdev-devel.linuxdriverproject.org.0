Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EFB24803
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 08:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C55E385BCC;
	Tue, 21 May 2019 06:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id miJsj0kWx+nm; Tue, 21 May 2019 06:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F7E081B75;
	Tue, 21 May 2019 06:24:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8C51BF328
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 06:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A5D481B75
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 06:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhDwGEaG3tmL for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:24:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D60A281B72
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 06:24:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31ADE2173C;
 Tue, 21 May 2019 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558419873;
 bh=ZshP8rr+U+KG2zbDeHbOGcRJBSaS1gDqRvgJbWlilIc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A/egFiqsIZW1N0Uw03GJahczQcAmMMW9SO+vfStlvHvrDZjM7cGIVPKKLe4N5mY0M
 lwacbLuTBuecVsR/mbQCVWmIDUc53d+Aidtm8iQPEinHj7s9Xu9e9WJNXRgwZDX/bU
 tNXboyHWpBw1E+2X4UTGvZwcFHedzHhOoRtz5QzA=
Date: Tue, 21 May 2019 08:24:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH 6/7] staging: vt6656: clean-up registers initialization
 error path
Message-ID: <20190521062430.GA13860@kroah.com>
References: <20190520163844.1225-1-quentin.deslandes@itdev.co.uk>
 <20190520163844.1225-7-quentin.deslandes@itdev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520163844.1225-7-quentin.deslandes@itdev.co.uk>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Nishad Kamdar <nishadkamdar@gmail.com>, Mukesh Ojha <mojha@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 20, 2019 at 04:39:04PM +0000, Quentin Deslandes wrote:
> Avoid discarding function's return code during register initialization.
> Handle it instead and return 0 on success or a negative errno value on
> error.
> 
> Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> ---
>  drivers/staging/vt6656/main_usb.c | 163 ++++++++++++++++++------------
>  1 file changed, 96 insertions(+), 67 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 5fd845cbdd52..8ed96e8eedbe 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -109,33 +109,38 @@ static void vnt_set_options(struct vnt_private *priv)
>   */
>  static int vnt_init_registers(struct vnt_private *priv)
>  {
> +	int ret = 0;

Minor nit here, no need to set this to 0 as you instantly set it with
this call:

>  	struct vnt_cmd_card_init *init_cmd = &priv->init_command;
>  	struct vnt_rsp_card_init *init_rsp = &priv->init_response;
>  	u8 antenna;
>  	int ii;
> -	int status = STATUS_SUCCESS;
>  	u8 tmp;
>  	u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;
>  
>  	dev_dbg(&priv->usb->dev, "---->INIbInitAdapter. [%d][%d]\n",
>  		DEVICE_INIT_COLD, priv->packet_type);
>  
> -	if (!vnt_check_firmware_version(priv)) {
> -		if (vnt_download_firmware(priv) == true) {
> -			if (vnt_firmware_branch_to_sram(priv) == false) {
> -				dev_dbg(&priv->usb->dev,
> -					" vnt_firmware_branch_to_sram fail\n");
> -				return false;
> -			}
> -		} else {
> -			dev_dbg(&priv->usb->dev, "FIRMWAREbDownload fail\n");
> -			return false;
> +	ret = vnt_check_firmware_version(priv);

You can fix that up in a later patch :)

At first glance, these all look really good, thanks for doing this work.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
