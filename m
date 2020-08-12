Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D8242DC4
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 19:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 271E886AE4;
	Wed, 12 Aug 2020 17:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-_WtqZVPA4i; Wed, 12 Aug 2020 17:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED4F086AB5;
	Wed, 12 Aug 2020 17:00:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63A341BF4DD
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 17:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60732882E1
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 17:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RUN3zirXNal for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 17:00:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B37E882CE
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 17:00:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 818CA1801A4C3
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 16:21:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 1B41A8378BB9;
 Wed, 12 Aug 2020 16:21:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3873:4321:4605:5007:9036:10004:10400:10848:11026:11232:11473:11658:11914:12043:12114:12296:12297:12438:12555:12740:12760:12895:13101:13255:13439:14096:14097:14659:14721:21080:21451:21627:21740:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: spot60_1a07ad626fec
X-Filterd-Recvd-Size: 3696
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed, 12 Aug 2020 16:21:55 +0000 (UTC)
Message-ID: <fa2d01411982f3f0873a895f4790ce65d9d6d185.camel@perches.com>
Subject: Re: [PATCH 06/44] staging: spmi: hisi-spmi-controller: use le32
 macros where needed
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Wed, 12 Aug 2020 09:21:54 -0700
In-Reply-To: <910eeee38f1a13b5dc1d423aed3f7dc74bc48029.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <910eeee38f1a13b5dc1d423aed3f7dc74bc48029.1597247164.git.mchehab+huawei@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-08-12 at 17:56 +0200, Mauro Carvalho Chehab wrote:
> Instead of manually using bswap_32(), just use the
> le32 macros.

Are you certain this code will now work on any endian cpu?

Maybe just use __swab32 instead

> diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
[]
> @@ -43,11 +42,6 @@
>  #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
>  #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
>  
> -#define bswap_32(X)   \
> -    ((((u32)(X) & 0xff000000) >> 24) | \
> -     (((u32)(X) & 0x00ff0000) >> 8) | \
> -     (((u32)(X) & 0x0000ff00) << 8) | \
> -     (((u32)(X) & 0x000000ff) << 24))
>  #define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET		16
>  #define SPMI_APB_SPMI_CMD_ADDR_OFFSET			0
>  
> @@ -179,14 +173,15 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
>  
>  	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
>  
> -	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
> +	rc = spmi_controller_wait_for_done(spmi_controller,
> +					   spmi_controller->base, sid, addr);
>  	if (rc)
>  		goto done;
>  
>  	i = 0;
>  	do {
>  		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
> -		data = bswap_32(data);
> +		data = be32_to_cpu((__be32)data);
>  		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
>  			memcpy(buf, &data, sizeof(data));
>  			buf += sizeof(data);
> @@ -210,8 +205,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
>  {
>  	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
>  	unsigned long flags;
> -	u32 cmd;
> -	u32 data = 0;
> +	u32 cmd, data;
>  	int rc;
>  	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
>  	u8 op_code, i;
> @@ -246,7 +240,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
>  
>  	i = 0;
>  	do {
> -		memset(&data, 0, sizeof(data));
> +		data = 0;
>  		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
>  			memcpy(&data, buf, sizeof(data));
>  			buf += sizeof(data);
> @@ -255,8 +249,8 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
>  			buf += (bc % SPMI_PER_DATAREG_BYTE);
>  		}
>  
> -		data = bswap_32(data);
> -		writel(data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
> +		writel((u32)cpu_to_be32(data),
> +		       spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
>  		i++;
>  	} while (bc > i * SPMI_PER_DATAREG_BYTE);
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
