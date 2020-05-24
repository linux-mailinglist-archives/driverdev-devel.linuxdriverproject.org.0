Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4261DFF4D
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 16:08:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08EFE87730;
	Sun, 24 May 2020 14:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sOn57E3a3WxG; Sun, 24 May 2020 14:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2AE88769F;
	Sun, 24 May 2020 14:08:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26EF71BF407
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 14:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18CDF8769E
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 14:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I+Fh0gBFdFLO for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 14:08:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4E1E853E3
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 14:08:42 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id e10so13030631edq.0
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 07:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oOPa+ZvfDR3HcvpFO6vT0WShjxXnzg9SNOFTcwUbROg=;
 b=hWqY7sN6lFkh6DfzmV1owOmZkQPJS/Vmb5dpb8VaxSnYiRK8E+r5nv0ALwqzt4nh0V
 Bts8MYfihYbzSchAhdShqE5sJH2T72xpqgSgoruGdSP8QFsUutg7aDjv//lFz39tXRoi
 5VzW13t1tllwjQqhi4SI4U6ugwn8RcL1hKH33nyvi129MvkSMz7ojb+kSQ4MH6o3G4Gl
 qmltsyNL8HjVqK9u/EbMUz87KvJo8Gs2mQQ0d2GUqkVXjL8YxohHArneQ13oqfqPRTaW
 NofPg7j2IO+wulosLimD9dA1BM6s+QvUB1j5etzGFfrhi1ut5mUgaXY0mx5tlYSUV9Zz
 xN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oOPa+ZvfDR3HcvpFO6vT0WShjxXnzg9SNOFTcwUbROg=;
 b=M3b3YE3p7DOuazxXLeCCWDjdTfXtm40AfXKZ2yIrFM160dlCBLgZPoofWNH4mzspFg
 dUIXM4ZquNfDCNQV2/7QxDxeOQKMAJPps/v8GsD5VG3HRgG5fPb/N0WFVOC1QXP6bUfr
 EDFCkfethyjN+Nr8ffGreKxDAs1KVVUqLccDvg7b+0fgn2ivDNGPssN875nYzh5sdK4f
 a4zpAXKmqDIaCe3sCjaMVcgwVzoMNDsSOY+ZVJo0AZ4/XV6O+D8QzEhT/lKfvj8vzDa6
 xmOpNUfssDugN/oRS9I8jhbgT3mj7AeJPi1hzkrnZCLYxFbvEUf8fp48SLpdAz4r8z1Q
 2V3Q==
X-Gm-Message-State: AOAM533bAaLCl1fHSbZoV+gbAxX/Py1+OvkoE/AqefEiCX2rmiP9/Lzp
 bL10U/IN9C9UV+bHXUjEpSM=
X-Google-Smtp-Source: ABdhPJzh1UeIujqeorr1WiLLnh8/PGj+rE0hSQm2S6Uo6GAYrdacJxOfQWztG7PCwRs6VurIxf3mfQ==
X-Received: by 2002:a50:abe3:: with SMTP id u90mr11208483edc.278.1590329321092; 
 Sun, 24 May 2020 07:08:41 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:b7f9:7600:ed3c:ef0e:6f3d:f78f])
 by smtp.gmail.com with ESMTPSA id q25sm4990305edw.77.2020.05.24.07.08.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 07:08:40 -0700 (PDT)
Date: Sun, 24 May 2020 16:08:38 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: GAURAV PATHAK <gauravpathak129@gmail.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200524140838.urnzunavhoic6c72@ltop.local>
References: <20200524113613.GA19734@xebrium.com>
 <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
 <20200524133218.GA1391@xebrium.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524133218.GA1391@xebrium.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 24, 2020 at 07:02:20PM +0530, GAURAV PATHAK wrote:
> 
> For few drivers, I am getting:
> 
> CC [M]  drivers/staging/vt6656/key.o
>   CHECK   drivers/staging/vt6656/rf.c
> /usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h:417:9: warning: preprocessor token offsetof redefined
> ./include/linux/stddef.h:17:9: this was the original definition
> 
> but I guess these are false positive, as #undef offsetof is already present in ./include/linux/stddef.h.

But there is no #undef in /usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h
which seems to be sometimes included after Linux's include/linux/stddef.h

-- Luc 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
