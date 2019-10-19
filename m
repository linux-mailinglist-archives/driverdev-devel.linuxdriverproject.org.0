Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A163DD941
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 17:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 979DF86123;
	Sat, 19 Oct 2019 15:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kYMLyrQ2y2Pp; Sat, 19 Oct 2019 15:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D68585045;
	Sat, 19 Oct 2019 15:09:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3E91BF302
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 15:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C00987BD7
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 15:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ve3p+gUkXEfO for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 15:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 301AD87C89
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 15:09:13 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r3so9197114wrj.6
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 08:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Ay4timk1xWotJvsgSoLnsWO4oyPYDoeHPtFGTfhtgfI=;
 b=t92CWFWjyR94g1Dx9rLLDBajpCwSVgP9bI+BzzLmMWZgV5Vh/vgSRVH9WwcAtPk2Do
 Xj4UA6iD8Am3EqTrRbGqnY9iFTeScopQVDrgzgE3PHlLQWcFQVXhgY2YkjR6m4GXKYyo
 BCoYiHBP244f7Rpf7FTvRaBA0fp9Um9xEa+Pf70IjThEsRkF5q0kyTmWK2s9pJ8+LqVY
 jseC6rLkbvcasZ5ZCWPYTEcAIX39kcjutHWqaV6QeyB6kuurSRfhTNs34cTYuayoJ/uY
 0iro7dl30v60hbWNDYSZnfg6MJn+j1fz4QqKCztV0Lf/wjQENXhpmuFZtVlJ6NNuKMkD
 GmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Ay4timk1xWotJvsgSoLnsWO4oyPYDoeHPtFGTfhtgfI=;
 b=AIOJ0s0JmG5JtpxhaAMNivacXBhsCTTaB9msqiXNkDPnXUambWMqe9WbF5Gs7DpQpS
 yNTwfNbOnpXB/obdcxRtN+SKPY2SNbNOLe4fvPlhte/FoDAM8lFGpk2byKbEDTA5YyPO
 t+SElKc+Htmt/mqwwvSIkkWNli3rfGZMDt6d+EqGnPKbh3gBYPPCf5H09X88s2fMaLcf
 li/1/qoZMErZ5Wj3uttmAP7ViOyEoBrTIEKBmSBwWhxl/ZFgA8CETIG0CEzaE6sLYGQ2
 QKuI/q7QMQHU64bTttFS1g2MS8UYeclPgTYipSJQKtwsd8PLzNS8LP28/VgQpRX4G40V
 4k6A==
X-Gm-Message-State: APjAAAU4G1TSnBVNiIKUAfigErv+c6BQh2orKbaojT/wro42gqY38MzG
 bNzrGJzqeVxnD8N2mFtKuw==
X-Google-Smtp-Source: APXvYqz7qO0W/vfzKmX4qN6UybbkVEuAp7v+lMxgcQwDTZpgHCDRYgUylsJfDwmszlw+CZ4cd3T+jg==
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr1750054wrs.179.1571497751485; 
 Sat, 19 Oct 2019 08:09:11 -0700 (PDT)
Received: from ninjabhubz.org (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.gmail.com with ESMTPSA id t13sm10742318wra.70.2019.10.19.08.09.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 08:09:10 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sat, 19 Oct 2019 16:09:03 +0100 (BST)
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
In-Reply-To: <20191019142443.GH24678@kadam>
Message-ID: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 19 Oct 2019, Dan Carpenter wrote:

> On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 3355183fc86c..573216b08042 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> >  	if (wfx_data_read(wdev, skb->data, alloc_len))
> >  		goto err;
> >  
> > -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> >  	_trace_piggyback(piggyback, false);
> >  
> > -	hif = (struct hif_msg *) skb->data;
> > +	hif = (struct hif_msg *)skb->data;
> >  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >  	if (hif->encrypted == 0x2) {
> > -		if (wfx_sl_decode(wdev, (void *) hif)) {
> > +		if (wfx_sl_decode(wdev, (void *)hif)) {
> 
> In the future you may want to go through and remove the (void *) casts.
> It's not required here.
> 
> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > index f65f7d75e731..effd07957753 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> >  	struct wfx_spi_priv *bus = priv;
> >  	u16 regaddr = (addr << 12) | (count / 2);
> >  	// FIXME: use a bounce buffer
> > -	u16 *src16 = (void *) src;
> > +	u16 *src16 = (void *)src;
> 
> Here we are just getting rid of the constness.  Apparently we are doing
> that so we can modify it without GCC pointing out the bug!!  I don't
> know the code but this seems very wrong.
> 
Checkpatch was complaining about  space between type cast and the 
variable. I just get rid of the space. Well I don't know whether this was 
false positive one.

Thanks for the feedback. I will update the patch.

Regards,
Jules
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
