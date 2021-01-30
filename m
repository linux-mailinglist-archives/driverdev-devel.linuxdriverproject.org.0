Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EBE30966F
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 16:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9D8685E99;
	Sat, 30 Jan 2021 15:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQ5Dwy0cuRRR; Sat, 30 Jan 2021 15:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB36F85E6F;
	Sat, 30 Jan 2021 15:57:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91F211BF31E
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 15:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E90886A81
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 15:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81UMhiCJ1SVm for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 15:57:48 +0000 (UTC)
X-Greylist: delayed 00:59:34 by SQLgrey-1.7.6
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AA18869B6
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 15:57:48 +0000 (UTC)
Received: by mail-vs1-f46.google.com with SMTP id n18so6578932vsa.12
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 07:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yaerobi-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CW/F06AVJFUTvuLKKSGAi/rzJobDHkRkV5w1mLI/Gdo=;
 b=ffso8FpE3hSmTAiXXmzJpkpDQj4OTXWkL9TsdjDQc1/XMgM2T6nFkXDljYPRwy2qGP
 /z95ABv/S7xmFunK0BzlXW35aPmvShFulP6Fve0xhYVptsIt1QmMHXhEPRuLk/Eodo6F
 MmWPb8bHNt+DJyrBlirkf/CvdGfMrhQYgeHNPub4fXOLQ4WuZrawwlnk/zm39M4Skxsq
 /WqYsM5L/uGvgEI19v3AmjsIvv+BjzYTFwsRJkOw8lP/d3tNNATjE/BAlgYiMwgSllS7
 pVjYBoa4X9SiSAo6uc9AqbSeNtdcigXDLhv51S2Oy9nk5J/YHzomVUnxr1tiZFc5pfeQ
 pUqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CW/F06AVJFUTvuLKKSGAi/rzJobDHkRkV5w1mLI/Gdo=;
 b=ayTVU4LCKx93AG0kqqcxIjMVEn/hXBsUJNLAMwA4/Eq7ou6T/68vWbtAYjMYHvU4G4
 37z5LGHAc4lHEzdwWVgjgWsejLxnEC6e7w5D0TKC7ZDvlL2t2WlLKyyehNpD37tGWK0N
 gUssttME8ZEwaNpyncy4zELAchfx5vAC/wmJHfqCi9VjBPozR+MhNjXAYjsx4x71XTq0
 orDUA67GqEvm/V5mjy3IW0YorFjadl3iQjVeNSll5x9jdAb+8DI7BtBC/rw/jL1UEj7T
 Vf5A1ke4nVYDtrSKAZjNEEgY13VXMfrMN2Y+WwCfp9Oy9sXddX5Iunbt24K4aLxnoshO
 joyA==
X-Gm-Message-State: AOAM532M5hY6dxB+VRmm/rpQTqjDyD6qgSko/85mjbNb4CbI2854OdyX
 jP7Oj6nLLWPeTcWnZFhP+9etfkBPF7urOYmm
X-Google-Smtp-Source: ABdhPJxrnESdmE1m6PCli3OT5InLB/0y+LkfIgYQI1cUPU4kSrxh8OMpqzFlVhVqvpkL30TE9EzFGg==
X-Received: by 2002:a05:6214:1703:: with SMTP id
 db3mr8235225qvb.43.1612018221413; 
 Sat, 30 Jan 2021 06:50:21 -0800 (PST)
Received: from debian (host15.190-136-155.telecom.net.ar. [190.136.155.15])
 by smtp.gmail.com with ESMTPSA id c20sm8322111qtj.29.2021.01.30.06.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jan 2021 06:50:20 -0800 (PST)
Date: Sat, 30 Jan 2021 11:50:15 -0300
From: Emmanuel Arias <eamanu@yaerobi.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] media: allegro-dvt: Use __packed sentence
Message-ID: <YBVyJylm6qek7WvL@debian>
References: <YBRpstkOi685uHef@debian>
 <YBUeG38fOvMkYgIp@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBUeG38fOvMkYgIp@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 m.tretter@pengutronix.de, kernel@pengutronix.de, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

> 
> Spelling check please?
> 
> And _why_ are you making this change, what does this do "better" than
> the original?
>
Actually, I'm really new here, and this is my first patch. I run the
checkpatch.pl, and give me that recommendation. 

I would like to look the David comments.

Thanks!
eamanu

> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
