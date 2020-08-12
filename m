Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A693242EDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 21:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C9DC23BC0;
	Wed, 12 Aug 2020 19:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkOxoBmg3nFq; Wed, 12 Aug 2020 19:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BD0323524;
	Wed, 12 Aug 2020 19:02:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAEF11BF870
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D43DC8812F
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJ-non2GNUMV for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 19:02:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1FF5880E8
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 19:02:14 +0000 (UTC)
Received: from onda.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B3C720838;
 Wed, 12 Aug 2020 19:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597258934;
 bh=tcY6udWchzBZ1TgyOQ4yi1x0QvjedIv7AcaF/nWHFes=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0kRPMrl9CzThgdYBaFfV/CeW206xUfNuZc+LwfiHb5rNwIuXoIcVQvwqlQVmTJHiH
 urxL1hofoU2/jGF04F4BPzi4r089PAXsS0jWOL2OKyaOcmjgV6yEPc81j2FkKYyEEo
 JtJm8nM1hws9yA+4HSGLf5Xm7I/39p7xNX5QrOck=
Date: Wed, 12 Aug 2020 16:02:09 -0300
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 06/44] staging: spmi: hisi-spmi-controller: use le32
 macros where needed
Message-ID: <20200812160209.4871e90d@onda.lan>
In-Reply-To: <fa2d01411982f3f0873a895f4790ce65d9d6d185.camel@perches.com>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <910eeee38f1a13b5dc1d423aed3f7dc74bc48029.1597247164.git.mchehab+huawei@kernel.org>
 <fa2d01411982f3f0873a895f4790ce65d9d6d185.camel@perches.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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

Em Wed, 12 Aug 2020 09:21:54 -0700
Joe Perches <joe@perches.com> escreveu:

> On Wed, 2020-08-12 at 17:56 +0200, Mauro Carvalho Chehab wrote:
> > Instead of manually using bswap_32(), just use the
> > le32 macros.  
> 
> Are you certain this code will now work on any endian cpu?
> 
> Maybe just use __swab32 instead

Well, I didn't test, because this driver is for an specific
hardware (arm64). Yet, what happens in practice is that just
one byte is written by the PMIC drivers. If the order is not
LE, the byte written at the buffer will always be zero.

> 
> > diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c  
> []
> > @@ -43,11 +42,6 @@
> >  #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
> >  #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
> >  
> > -#define bswap_32(X)   \
> > -    ((((u32)(X) & 0xff000000) >> 24) | \
> > -     (((u32)(X) & 0x00ff0000) >> 8) | \
> > -     (((u32)(X) & 0x0000ff00) << 8) | \
> > -     (((u32)(X) & 0x000000ff) << 24))
> >  #define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET		16
> >  #define SPMI_APB_SPMI_CMD_ADDR_OFFSET			0
> >  
> > @@ -179,14 +173,15 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
> >  
> >  	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
> >  
> > -	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
> > +	rc = spmi_controller_wait_for_done(spmi_controller,
> > +					   spmi_controller->base, sid, addr);
> >  	if (rc)
> >  		goto done;
> >  
> >  	i = 0;
> >  	do {
> >  		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
> > -		data = bswap_32(data);
> > +		data = be32_to_cpu((__be32)data);
> >  		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
> >  			memcpy(buf, &data, sizeof(data));
> >  			buf += sizeof(data);
> > @@ -210,8 +205,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
> >  {
> >  	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
> >  	unsigned long flags;
> > -	u32 cmd;
> > -	u32 data = 0;
> > +	u32 cmd, data;
> >  	int rc;
> >  	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
> >  	u8 op_code, i;
> > @@ -246,7 +240,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
> >  
> >  	i = 0;
> >  	do {
> > -		memset(&data, 0, sizeof(data));
> > +		data = 0;
> >  		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
> >  			memcpy(&data, buf, sizeof(data));
> >  			buf += sizeof(data);
> > @@ -255,8 +249,8 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
> >  			buf += (bc % SPMI_PER_DATAREG_BYTE);
> >  		}
> >  
> > -		data = bswap_32(data);
> > -		writel(data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
> > +		writel((u32)cpu_to_be32(data),
> > +		       spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
> >  		i++;
> >  	} while (bc > i * SPMI_PER_DATAREG_BYTE);
> >    
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
