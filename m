Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13268229749
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 13:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CF8D869FE;
	Wed, 22 Jul 2020 11:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVI37D5UknvN; Wed, 22 Jul 2020 11:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7286E869A5;
	Wed, 22 Jul 2020 11:20:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA5E61BF38E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D6E558800D
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ad+PtezFDOjW for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 11:20:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B97B488000
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 11:20:01 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 66B4CAE6;
 Wed, 22 Jul 2020 13:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1595416797;
 bh=9bheVS99DQaRwwdpBomM0E03oIp9aDYofl6Bxy+lGec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=drGfHuMEbciHC9WdUPfke/cq1AfJNe3AVSCs8hCTL+8FLoq4KrkzUo2p+hIruq9iB
 cvlqu8xThmZpjCEkJ8vm04n8/Tx+cnT/p5abshMMLD7TRk33ni6zZLe4uaNJ4dEJ90
 Eto05h81Je5fIN0sBFgs3BFkqJOUYiH7bV7zjo6U=
Date: Wed, 22 Jul 2020 14:19:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: Re: [PATCH for v5.9] media: omap: Replace HTTP links with HTTPS ones
Message-ID: <20200722111952.GC5833@pendragon.ideasonboard.com>
References: <20200719112133.58236-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719112133.58236-1-grandmaster@al2klimov.de>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alexander,

Thank you for the patch.

On Sun, Jul 19, 2020 at 01:21:33PM +0200, Alexander A. Klimov wrote:
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

I expect Sakari to take this patch in his tree when he will be back from
vacation at the end of the month.

> ---
>  Continuing my work started at 93431e0607e5.
>  See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
>  (Actually letting a shell for loop submit all this stuff for me.)
> 
>  If there are any URLs to be removed completely
>  or at least not (just) HTTPSified:
>  Just clearly say so and I'll *undo my change*.
>  See also: https://lkml.org/lkml/2020/6/27/64
> 
>  If there are any valid, but yet not changed URLs:
>  See: https://lkml.org/lkml/2020/6/26/837
> 
>  If you apply the patch, please let me know.
> 
>  Sorry again to all maintainers who complained about subject lines.
>  Now I realized that you want an actually perfect prefixes,
>  not just subsystem ones.
>  I tried my best...
>  And yes, *I could* (at least half-)automate it.
>  Impossible is nothing! :)
> 
> 
>  drivers/media/platform/omap3isp/isp.c | 2 +-
>  drivers/staging/media/omap4iss/iss.c  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
> index b91e472ee764..74fa67082e09 100644
> --- a/drivers/media/platform/omap3isp/isp.c
> +++ b/drivers/media/platform/omap3isp/isp.c
> @@ -142,7 +142,7 @@ static struct isp_reg isp_reg_list[] = {
>   * readback the same register, in this case the revision register.
>   *
>   * See this link for reference:
> - *   http://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
> + *   https://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
>   */
>  void omap3isp_flush(struct isp_device *isp)
>  {
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 6fb60b58447a..e06ea7ea1e50 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -55,7 +55,7 @@ static void iss_print_status(struct iss_device *iss)
>   * readback the same register, in this case the revision register.
>   *
>   * See this link for reference:
> - *   http://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
> + *   https://www.mail-archive.com/linux-omap@vger.kernel.org/msg08149.html
>   */
>  static void omap4iss_flush(struct iss_device *iss)
>  {

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
