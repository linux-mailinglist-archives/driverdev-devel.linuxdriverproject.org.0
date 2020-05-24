Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EA51DFEF9
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 14:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 202E686599;
	Sun, 24 May 2020 12:51:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TGekDzn-KTa; Sun, 24 May 2020 12:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08D1185FD0;
	Sun, 24 May 2020 12:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 84A871BF313
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 705AA8813E
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4iklanxkNmWx for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 12:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 941F18810B
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 12:49:31 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id n18so7631286pfa.2
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 05:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=avaut5ajhNNUYhxmsxo+kkHym7WyyfYOgaEyaTrrkGc=;
 b=AaVL1qTAOuDr2lrlIGZ1L5EXx9kD9/sIzr76RAgNUBZwOKWWcKTJgUD0iIkpZXSrpd
 WBsN8CT9WBSmGzNywlYUS4eXHCPsfv1IpwAfOprEyw/r5f0loPUME8MibfjmWXHyQlES
 ZhYtu2//Q34gPiAHEopjdoxSKLas2ybivcvrP0MFAx5YWiMZTZSxzfBt5wzur1lPUQd2
 uB/vvLEyHzXyAhj5xNerxrTXkY2I0IUkcAtFq5kJ89frJ4UxoNmxmOo7c0rwwnIfwZXy
 n08Vq2cM55hUx1uAX6+5GvgPENJBeTeZ+Y4lZ7P+UhAQITOkx/cVIwYarxiiOJvFkg3k
 cPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=avaut5ajhNNUYhxmsxo+kkHym7WyyfYOgaEyaTrrkGc=;
 b=pcpes5bgVehbsEZKvkdLfawzBAN3DbAg6byTvHAJsM/StiZGyTsBcBr0CzRT+krACG
 34e6KFvIyJUC5P9c9VZwHLyLMkKfhvjvAL1bsb+d/c0Wua/4KeBeMHpkPSgc0cYVLRiV
 VP+iTvEac/5rlKto3M2ITyVq6dx4N1FD07eSE6VhNFlce99ESL4kOKIbvjarFQD1dxWM
 tJ8WjiFonilZP3qnF7FgS4eaYCHPW2E9cxwy6OVKvIKSI+31d0LTgZGVLArpnQMjLFQe
 VWvEAHB0qb0o5J4MxJWHMZTOB6Re8h7jFFkg7v2ExxnB9nYwx0CzeJN3D+q5PmxuyqJN
 /9hw==
X-Gm-Message-State: AOAM533E5vyLEOsZYj3ULvFXuO15JIABJW0mTXYjDN/K9MSa+et+OYmw
 FAFPJog53E72VAtBfTg0qDY=
X-Google-Smtp-Source: ABdhPJyxThqTX5pb6OqAZSzoiuhG7lpHWxsbd2bLIdTPNFkjqA1h28CtfijF8zf7Gie1Vmm32YDxzg==
X-Received: by 2002:a63:1451:: with SMTP id 17mr21864378pgu.242.1590324571001; 
 Sun, 24 May 2020 05:49:31 -0700 (PDT)
Received: from xebrium.com ([182.70.106.85])
 by smtp.gmail.com with ESMTPSA id 5sm9564593pgl.4.2020.05.24.05.49.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 24 May 2020 05:49:29 -0700 (PDT)
Date: Sun, 24 May 2020 18:19:22 +0530
From: GAURAV PATHAK <gauravpathak129@gmail.com>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200524124919.GA6889@xebrium.com>
References: <20200524113613.GA19734@xebrium.com>
 <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uZ3hkaAS1mZxFaxD"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--uZ3hkaAS1mZxFaxD
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Thanks a lot for your reply.
I am trying to run sparse on drivers/staging directory,
but I am not getting any useful warnings.
Steps that I did:

- Referred https://www.kernel.org/doc/man-pages/linux-next.html to get
linux-next latest tag next-20200522.
- After that executed following commands:
	- make mrproper; make clean; make distclean
	- make defconfig
	- make menuconfig (Enabled all Staging Drivers with M)
	- make modules_prepare
	- make C=1 M=drivers/staging (Also tried individual directories
	  inside staging directory e.g. make C=1 M=drivers/staging/comedi/drivers)

I am not getting any warning, I have attached the output in text format.

Any pointers for finding warning using sparse in drivers/staging
directory will be helpful. I really appretiate your guidance in this
regard.

On Sun, May 24, 2020 at 02:10:44PM +0200, Luc Van Oostenryck wrote:
> Hi,
> 
> On Sun, May 24, 2020 at 05:06:18PM +0530, Gaurav Pathak wrote:
> > Silence following sparse warning:
> > drivers/staging/comedi/drivers/dt2814.c: In function ‘dt2814_interrupt’:
> > drivers/staging/comedi/drivers/dt2814.c:193:6: warning: variable ‘data’ set but not used [-Wunused-but-set-variable]
> >   int data;
> >       ^~~~
> > drivers/staging/comedi/drivers/dt2814.c: In function ‘dt2814_attach’:
> > drivers/staging/comedi/drivers/dt2814.c:232:6: warning: variable ‘i’ set but not used [-Wunused-but-set-variable]
> >   int i;
> >       ^
> 
> These warnings are not from sparse but simply from the compiler.
>  
> >  static irqreturn_t dt2814_interrupt(int irq, void *d)
> >  {
> > -	int lo, hi;
> >  	struct comedi_device *dev = d;
> >  	struct dt2814_private *devpriv = dev->private;
> >  	struct comedi_subdevice *s = dev->read_subdev;
> > -	int data;
> >  
> >  	if (!dev->attached) {
> >  		dev_err(dev->class_dev, "spurious interrupt\n");
> >  		return IRQ_HANDLED;
> >  	}
> >  
> > -	hi = inb(dev->iobase + DT2814_DATA);
> > -	lo = inb(dev->iobase + DT2814_DATA);
> > -
> > -	data = (hi << 4) | (lo >> 4);
> 
> OK, 'data' is unused but are these 2 'inb(dev->iobase + DT2814_DATA)'
> needed or not? I would guess that they're needed but I don't know
> this hardware.
> 
> > @@ -241,8 +233,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
> >  		dev_err(dev->class_dev, "reset error (fatal)\n");
> >  		return -EIO;
> >  	}
> > -	i = inb(dev->iobase + DT2814_DATA);
> > -	i = inb(dev->iobase + DT2814_DATA);
> 
> Same here.
> 
> -- Luc

--uZ3hkaAS1mZxFaxD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=sparse-check

  CHECK   drivers/staging/comedi/drivers/amplc_pci224.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
./include/linux/slab.h:593:13: error: undefined identifier '__builtin_mul_overflow'
./include/linux/slab.h:385:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/amplc_pci224.o
  CHECK   drivers/staging/comedi/drivers/amplc_pci230.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/amplc_pci230.o
  CHECK   drivers/staging/comedi/drivers/contec_pci_dio.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/contec_pci_dio.o
  CHECK   drivers/staging/comedi/drivers/das08_pci.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/das08_pci.o
  CHECK   drivers/staging/comedi/drivers/dt3000.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/dt3000.o
  CHECK   drivers/staging/comedi/drivers/dyna_pci10xx.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/dyna_pci10xx.o
  CHECK   drivers/staging/comedi/drivers/gsc_hpdi.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/gsc_hpdi.o
  CHECK   drivers/staging/comedi/drivers/icp_multi.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/icp_multi.o
  CHECK   drivers/staging/comedi/drivers/daqboard2000.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/daqboard2000.o
  CHECK   drivers/staging/comedi/drivers/jr3_pci.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/jr3_pci.o
  CHECK   drivers/staging/comedi/drivers/ke_counter.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ke_counter.o
  CHECK   drivers/staging/comedi/drivers/cb_pcidas64.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_pcidas64.o
  CHECK   drivers/staging/comedi/drivers/cb_pcidas.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_pcidas.o
  CHECK   drivers/staging/comedi/drivers/cb_pcidda.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_pcidda.o
  CHECK   drivers/staging/comedi/drivers/cb_pcimdas.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_pcimdas.o
  CHECK   drivers/staging/comedi/drivers/cb_pcimdda.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_pcimdda.o
  CHECK   drivers/staging/comedi/drivers/me4000.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/me4000.o
  CHECK   drivers/staging/comedi/drivers/me_daq.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/me_daq.o
  CHECK   drivers/staging/comedi/drivers/ni_6527.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_6527.o
  CHECK   drivers/staging/comedi/drivers/ni_65xx.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_65xx.o
  CHECK   drivers/staging/comedi/drivers/ni_660x.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_660x.o
  CHECK   drivers/staging/comedi/drivers/ni_670x.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
./include/linux/slab.h:593:13: error: undefined identifier '__builtin_mul_overflow'
./include/linux/slab.h:385:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/ni_670x.o
  CHECK   drivers/staging/comedi/drivers/ni_labpc_pci.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_pci.o
  CHECK   drivers/staging/comedi/drivers/ni_pcidio.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
drivers/staging/comedi/drivers/ni_pcidio.c:300:9: error: Expected ( after asm
drivers/staging/comedi/drivers/ni_pcidio.c:300:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/ni_pcidio.o
  CHECK   drivers/staging/comedi/drivers/ni_pcimio.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_pcimio.o
  CHECK   drivers/staging/comedi/drivers/rtd520.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/rtd520.o
  CHECK   drivers/staging/comedi/drivers/s626.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/s626.o
  CHECK   drivers/staging/comedi/drivers/mf6x4.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/mf6x4.o
  CHECK   drivers/staging/comedi/drivers/cb_das16_cs.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/cb_das16_cs.o
  CHECK   drivers/staging/comedi/drivers/das08_cs.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/das08_cs.o
  CHECK   drivers/staging/comedi/drivers/ni_daq_700.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_daq_700.o
  CHECK   drivers/staging/comedi/drivers/ni_daq_dio24.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_daq_dio24.o
  CHECK   drivers/staging/comedi/drivers/ni_labpc_cs.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_cs.o
  CHECK   drivers/staging/comedi/drivers/ni_mio_cs.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_mio_cs.o
  CHECK   drivers/staging/comedi/drivers/quatech_daqp_cs.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/quatech_daqp_cs.o
  CHECK   drivers/staging/comedi/drivers/dt9812.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/dt9812.o
  CHECK   drivers/staging/comedi/drivers/ni_usb6501.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/ni_usb6501.o
  CHECK   drivers/staging/comedi/drivers/usbdux.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/usbdux.o
  CHECK   drivers/staging/comedi/drivers/usbduxfast.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/usbduxfast.o
  CHECK   drivers/staging/comedi/drivers/usbduxsigma.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/usbduxsigma.o
  CHECK   drivers/staging/comedi/drivers/vmk80xx.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/usb.h:1973:17: error: Expected ( after asm
./include/linux/usb.h:1973:17: error: got __inline
./include/linux/usb.h:1976:17: error: Expected ( after asm
./include/linux/usb.h:1976:17: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/vmk80xx.o
  CHECK   drivers/staging/comedi/drivers/mite.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
./include/linux/slab.h:385:9: error: need constant string for inline asm
./include/linux/slab.h:385:9: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/mite.o
  CHECK   drivers/staging/comedi/drivers/ni_tio.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
./include/linux/slab.h:385:9: error: need constant string for inline asm
./include/linux/slab.h:593:13: error: too many errors
  CC [M]  drivers/staging/comedi/drivers/ni_tio.o
  CHECK   drivers/staging/comedi/drivers/ni_tiocmd.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_tiocmd.o
  CHECK   drivers/staging/comedi/drivers/ni_routes.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_routes.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_route_values.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_route_values.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_660x.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_660x.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_eseries.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_eseries.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_mseries.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_mseries.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6030e.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6030e.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6070e.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6070e.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6220.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6220.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6221.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6221.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6224.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6224.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6225.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6225.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6229.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6229.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6251.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6251.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6251.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6251.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6251.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6251.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6254.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6254.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6259.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6259.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6534.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6534.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6602.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6602.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6713.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6713.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6723.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6723.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pci-6733.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6733.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxi-6733.o
  CHECK   drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6738.c
  CC [M]  drivers/staging/comedi/drivers/ni_routing/ni_device_routes/pxie-6738.o
  LD [M]  drivers/staging/comedi/drivers/ni_routing.o
  CHECK   drivers/staging/comedi/drivers/ni_labpc_common.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_common.o
  CHECK   drivers/staging/comedi/drivers/ni_labpc_isadma.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_isadma.o
  CHECK   drivers/staging/comedi/drivers/comedi_8255.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/comedi_8255.o
  CHECK   drivers/staging/comedi/drivers/8255.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/8255.o
  CHECK   drivers/staging/comedi/drivers/amplc_dio200_common.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/amplc_dio200_common.o
  CHECK   drivers/staging/comedi/drivers/amplc_pc236_common.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/amplc_pc236_common.o
  CHECK   drivers/staging/comedi/drivers/das08.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/das08.o
  CHECK   drivers/staging/comedi/drivers/amplc_pci263.c
./arch/x86/include/asm/page_64.h:49:9: error: Expected ( after asm
./arch/x86/include/asm/page_64.h:49:9: error: got __inline
./arch/x86/include/asm/segment.h:266:9: error: Expected ( after asm
./arch/x86/include/asm/segment.h:266:9: error: got __inline
./arch/x86/include/asm/special_insns.h:205:9: error: Expected ( after asm
./arch/x86/include/asm/special_insns.h:205:9: error: got __inline
./arch/x86/include/asm/processor.h:816:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:816:9: error: got __inline
./arch/x86/include/asm/processor.h:828:9: error: Expected ( after asm
./arch/x86/include/asm/processor.h:828:9: error: got __inline
./include/linux/thread_info.h:134:9: error: Expected ( after asm
./include/linux/thread_info.h:134:9: error: got __inline
./include/linux/thread_info.h:150:13: error: Expected ( after asm
./include/linux/thread_info.h:150:13: error: got __inline
./include/linux/rcupdate.h:928:9: error: Expected ( after asm
./include/linux/rcupdate.h:928:9: error: got __inline
./include/linux/ktime.h:153:9: error: Expected ( after asm
./include/linux/ktime.h:153:9: error: got __inline
./include/linux/srcu.h:179:9: error: Expected ( after asm
./include/linux/srcu.h:179:9: error: got __inline
./include/asm-generic/fixmap.h:38:9: error: Expected ( after asm
./include/asm-generic/fixmap.h:38:9: error: got __inline
./arch/x86/include/asm/apic.h:107:9: error: Expected ( after asm
./arch/x86/include/asm/apic.h:107:9: error: got __inline
./include/linux/xarray.h:54:9: error: Expected ( after asm
./include/linux/xarray.h:54:9: error: got __inline
./include/linux/xarray.h:1562:9: error: Expected ( after asm
./include/linux/xarray.h:1562:9: error: got __inline
./include/linux/kernfs.h:330:9: error: Expected ( after asm
./include/linux/kernfs.h:330:9: error: got __inline
./include/linux/kernfs.h:331:9: error: Expected ( after asm
./include/linux/kernfs.h:331:9: error: got __inline
./include/linux/kobject.h:134:9: error: Expected ( after asm
./include/linux/kobject.h:134:9: error: got __inline
./include/linux/slab.h:385:9: error: Expected ( after asm
./include/linux/slab.h:385:9: error: got __inline
./include/linux/memremap.h:153:9: error: Expected ( after asm
./include/linux/memremap.h:153:9: error: got __inline
./arch/x86/include/asm/smap.h:47:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:47:9: error: got __inline
./arch/x86/include/asm/smap.h:53:9: error: Expected ( after asm
./arch/x86/include/asm/smap.h:53:9: error: got __inline
./arch/x86/include/asm/uaccess_64.h:37:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess_64.h:37:9: error: got __inline
./arch/x86/include/asm/uaccess.h:482:9: error: Expected ( after asm
./arch/x86/include/asm/uaccess.h:482:9: error: got __inline
./include/linux/sched/signal.h:261:9: error: Expected ( after asm
./include/linux/sched/signal.h:261:9: error: got __inline
./include/linux/sched/signal.h:505:17: error: Expected ( after asm
./include/linux/sched/signal.h:505:17: error: got __inline
./include/linux/iocontext.h:132:9: error: Expected ( after asm
./include/linux/iocontext.h:132:9: error: got __inline
./include/linux/iocontext.h:133:9: error: Expected ( after asm
./include/linux/iocontext.h:133:9: error: got __inline
./include/linux/iocontext.h:142:9: error: Expected ( after asm
./include/linux/iocontext.h:142:9: error: got __inline
./include/linux/quota.h:114:17: error: Expected ( after asm
./include/linux/quota.h:114:17: error: got __inline
./include/linux/quota.h:141:17: error: Expected ( after asm
./include/linux/quota.h:141:17: error: got __inline
./include/linux/fs.h:2870:9: error: Expected ( after asm
./include/linux/fs.h:2870:9: error: got __inline
./include/linux/fs.h:2879:9: error: Expected ( after asm
./include/linux/fs.h:2879:9: error: got __inline
./include/linux/fs.h:2993:9: error: Expected ( after asm
./include/linux/fs.h:2993:9: error: got __inline
./include/linux/huge_mm.h:390:9: error: Expected ( after asm
./include/linux/huge_mm.h:390:9: error: got __inline
./include/linux/mm.h:1138:13: error: Expected ( after asm
./include/linux/mm.h:1138:13: error: got __inline
./include/linux/mm.h:1470:9: error: Expected ( after asm
./include/linux/mm.h:1470:9: error: got __inline
./include/linux/scatterlist.h:95:9: error: Expected ( after asm
./include/linux/scatterlist.h:95:9: error: got __inline
./include/linux/dma-mapping.h:281:9: error: Expected ( after asm
./include/linux/dma-mapping.h:281:9: error: got __inline
./include/linux/dma-mapping.h:296:9: error: Expected ( after asm
./include/linux/dma-mapping.h:296:9: error: got __inline
./include/linux/dma-mapping.h:315:9: error: Expected ( after asm
./include/linux/dma-mapping.h:315:9: error: got __inline
./include/linux/dma-mapping.h:320:9: error: Expected ( after asm
./include/linux/dma-mapping.h:320:9: error: got __inline
./include/linux/dma-mapping.h:332:9: error: Expected ( after asm
./include/linux/dma-mapping.h:332:9: error: got __inline
./include/linux/dma-mapping.h:349:9: error: Expected ( after asm
./include/linux/dma-mapping.h:349:9: error: got __inline
./include/linux/dma-mapping.h:352:13: error: Expected ( after asm
./include/linux/dma-mapping.h:352:13: error: got __inline
./include/linux/dma-mapping.h:370:9: error: Expected ( after asm
./include/linux/dma-mapping.h:370:9: error: got __inline
./include/linux/dma-mapping.h:382:9: error: Expected ( after asm
./include/linux/dma-mapping.h:382:9: error: got __inline
./include/linux/dma-mapping.h:396:9: error: Expected ( after asm
./include/linux/dma-mapping.h:396:9: error: got __inline
./include/linux/dma-mapping.h:410:9: error: Expected ( after asm
./include/linux/dma-mapping.h:410:9: error: got __inline
./include/linux/dma-mapping.h:424:9: error: Expected ( after asm
./include/linux/dma-mapping.h:424:9: error: got __inline
./include/linux/dma-mapping.h:584:13: error: Expected ( after asm
./include/linux/dma-mapping.h:584:13: error: got __inline
  CC [M]  drivers/staging/comedi/drivers/amplc_pci263.o
  MODPOST 128 modules
  CC [M]  drivers/staging/comedi/drivers/8255.mod.o
  LD [M]  drivers/staging/comedi/drivers/8255.ko
  CC [M]  drivers/staging/comedi/drivers/8255_pci.mod.o
  LD [M]  drivers/staging/comedi/drivers/8255_pci.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_1032.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_1032.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_1500.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_1500.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_1516.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_1516.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_1564.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_1564.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_16xx.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_16xx.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_2032.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_2032.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_2200.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_2200.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_3120.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_3120.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_3501.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_3501.ko
  CC [M]  drivers/staging/comedi/drivers/addi_apci_3xxx.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_apci_3xxx.ko
  CC [M]  drivers/staging/comedi/drivers/addi_watchdog.mod.o
  LD [M]  drivers/staging/comedi/drivers/addi_watchdog.ko
  CC [M]  drivers/staging/comedi/drivers/adl_pci6208.mod.o
  LD [M]  drivers/staging/comedi/drivers/adl_pci6208.ko
  CC [M]  drivers/staging/comedi/drivers/adl_pci7x3x.mod.o
  LD [M]  drivers/staging/comedi/drivers/adl_pci7x3x.ko
  CC [M]  drivers/staging/comedi/drivers/adl_pci8164.mod.o
  LD [M]  drivers/staging/comedi/drivers/adl_pci8164.ko
  CC [M]  drivers/staging/comedi/drivers/adl_pci9111.mod.o
  LD [M]  drivers/staging/comedi/drivers/adl_pci9111.ko
  CC [M]  drivers/staging/comedi/drivers/adl_pci9118.mod.o
  LD [M]  drivers/staging/comedi/drivers/adl_pci9118.ko
  CC [M]  drivers/staging/comedi/drivers/adq12b.mod.o
  LD [M]  drivers/staging/comedi/drivers/adq12b.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci1710.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci1710.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci1720.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci1720.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci1723.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci1723.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci1724.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci1724.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci1760.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci1760.ko
  CC [M]  drivers/staging/comedi/drivers/adv_pci_dio.mod.o
  LD [M]  drivers/staging/comedi/drivers/adv_pci_dio.ko
  CC [M]  drivers/staging/comedi/drivers/aio_aio12_8.mod.o
  LD [M]  drivers/staging/comedi/drivers/aio_aio12_8.ko
  CC [M]  drivers/staging/comedi/drivers/aio_iiro_16.mod.o
  LD [M]  drivers/staging/comedi/drivers/aio_iiro_16.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_dio200.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_dio200.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_dio200_common.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_dio200_common.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_dio200_pci.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_dio200_pci.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pc236.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pc236.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pc236_common.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pc236_common.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pc263.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pc263.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pci224.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pci224.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pci230.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pci230.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pci236.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pci236.ko
  CC [M]  drivers/staging/comedi/drivers/amplc_pci263.mod.o
  LD [M]  drivers/staging/comedi/drivers/amplc_pci263.ko
  CC [M]  drivers/staging/comedi/drivers/c6xdigio.mod.o
  LD [M]  drivers/staging/comedi/drivers/c6xdigio.ko
  CC [M]  drivers/staging/comedi/drivers/cb_das16_cs.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_das16_cs.ko
  CC [M]  drivers/staging/comedi/drivers/cb_pcidas.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_pcidas.ko
  CC [M]  drivers/staging/comedi/drivers/cb_pcidas64.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_pcidas64.ko
  CC [M]  drivers/staging/comedi/drivers/cb_pcidda.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_pcidda.ko
  CC [M]  drivers/staging/comedi/drivers/cb_pcimdas.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_pcimdas.ko
  CC [M]  drivers/staging/comedi/drivers/cb_pcimdda.mod.o
  LD [M]  drivers/staging/comedi/drivers/cb_pcimdda.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_8254.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_8254.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_8255.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_8255.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_bond.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_bond.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_isadma.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_isadma.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_parport.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_parport.ko
  CC [M]  drivers/staging/comedi/drivers/comedi_test.mod.o
  LD [M]  drivers/staging/comedi/drivers/comedi_test.ko
  CC [M]  drivers/staging/comedi/drivers/contec_pci_dio.mod.o
  LD [M]  drivers/staging/comedi/drivers/contec_pci_dio.ko
  CC [M]  drivers/staging/comedi/drivers/dac02.mod.o
  LD [M]  drivers/staging/comedi/drivers/dac02.ko
  CC [M]  drivers/staging/comedi/drivers/daqboard2000.mod.o
  LD [M]  drivers/staging/comedi/drivers/daqboard2000.ko
  CC [M]  drivers/staging/comedi/drivers/das08.mod.o
  LD [M]  drivers/staging/comedi/drivers/das08.ko
  CC [M]  drivers/staging/comedi/drivers/das08_cs.mod.o
  LD [M]  drivers/staging/comedi/drivers/das08_cs.ko
  CC [M]  drivers/staging/comedi/drivers/das08_isa.mod.o
  LD [M]  drivers/staging/comedi/drivers/das08_isa.ko
  CC [M]  drivers/staging/comedi/drivers/das08_pci.mod.o
  LD [M]  drivers/staging/comedi/drivers/das08_pci.ko
  CC [M]  drivers/staging/comedi/drivers/das16.mod.o
  LD [M]  drivers/staging/comedi/drivers/das16.ko
  CC [M]  drivers/staging/comedi/drivers/das16m1.mod.o
  LD [M]  drivers/staging/comedi/drivers/das16m1.ko
  CC [M]  drivers/staging/comedi/drivers/das1800.mod.o
  LD [M]  drivers/staging/comedi/drivers/das1800.ko
  CC [M]  drivers/staging/comedi/drivers/das6402.mod.o
  LD [M]  drivers/staging/comedi/drivers/das6402.ko
  CC [M]  drivers/staging/comedi/drivers/das800.mod.o
  LD [M]  drivers/staging/comedi/drivers/das800.ko
  CC [M]  drivers/staging/comedi/drivers/dmm32at.mod.o
  LD [M]  drivers/staging/comedi/drivers/dmm32at.ko
  CC [M]  drivers/staging/comedi/drivers/dt2801.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt2801.ko
  CC [M]  drivers/staging/comedi/drivers/dt2811.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt2811.ko
  CC [M]  drivers/staging/comedi/drivers/dt2814.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt2814.ko
  CC [M]  drivers/staging/comedi/drivers/dt2815.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt2815.ko
  CC [M]  drivers/staging/comedi/drivers/dt2817.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt2817.ko
  CC [M]  drivers/staging/comedi/drivers/dt282x.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt282x.ko
  CC [M]  drivers/staging/comedi/drivers/dt3000.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt3000.ko
  CC [M]  drivers/staging/comedi/drivers/dt9812.mod.o
  LD [M]  drivers/staging/comedi/drivers/dt9812.ko
  CC [M]  drivers/staging/comedi/drivers/dyna_pci10xx.mod.o
  LD [M]  drivers/staging/comedi/drivers/dyna_pci10xx.ko
  CC [M]  drivers/staging/comedi/drivers/fl512.mod.o
  LD [M]  drivers/staging/comedi/drivers/fl512.ko
  CC [M]  drivers/staging/comedi/drivers/gsc_hpdi.mod.o
  LD [M]  drivers/staging/comedi/drivers/gsc_hpdi.ko
  CC [M]  drivers/staging/comedi/drivers/icp_multi.mod.o
  LD [M]  drivers/staging/comedi/drivers/icp_multi.ko
  CC [M]  drivers/staging/comedi/drivers/ii_pci20kc.mod.o
  LD [M]  drivers/staging/comedi/drivers/ii_pci20kc.ko
  CC [M]  drivers/staging/comedi/drivers/jr3_pci.mod.o
  LD [M]  drivers/staging/comedi/drivers/jr3_pci.ko
  CC [M]  drivers/staging/comedi/drivers/ke_counter.mod.o
  LD [M]  drivers/staging/comedi/drivers/ke_counter.ko
  CC [M]  drivers/staging/comedi/drivers/me4000.mod.o
  LD [M]  drivers/staging/comedi/drivers/me4000.ko
  CC [M]  drivers/staging/comedi/drivers/me_daq.mod.o
  LD [M]  drivers/staging/comedi/drivers/me_daq.ko
  CC [M]  drivers/staging/comedi/drivers/mf6x4.mod.o
  LD [M]  drivers/staging/comedi/drivers/mf6x4.ko
  CC [M]  drivers/staging/comedi/drivers/mite.mod.o
  LD [M]  drivers/staging/comedi/drivers/mite.ko
  CC [M]  drivers/staging/comedi/drivers/mpc624.mod.o
  LD [M]  drivers/staging/comedi/drivers/mpc624.ko
  CC [M]  drivers/staging/comedi/drivers/multiq3.mod.o
  LD [M]  drivers/staging/comedi/drivers/multiq3.ko
  CC [M]  drivers/staging/comedi/drivers/ni_6527.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_6527.ko
  CC [M]  drivers/staging/comedi/drivers/ni_65xx.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_65xx.ko
  CC [M]  drivers/staging/comedi/drivers/ni_660x.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_660x.ko
  CC [M]  drivers/staging/comedi/drivers/ni_670x.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_670x.ko
  CC [M]  drivers/staging/comedi/drivers/ni_at_a2150.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_at_a2150.ko
  CC [M]  drivers/staging/comedi/drivers/ni_at_ao.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_at_ao.ko
  CC [M]  drivers/staging/comedi/drivers/ni_atmio.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_atmio.ko
  CC [M]  drivers/staging/comedi/drivers/ni_atmio16d.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_atmio16d.ko
  CC [M]  drivers/staging/comedi/drivers/ni_daq_700.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_daq_700.ko
  CC [M]  drivers/staging/comedi/drivers/ni_daq_dio24.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_daq_dio24.ko
  CC [M]  drivers/staging/comedi/drivers/ni_labpc.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_labpc.ko
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_common.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_labpc_common.ko
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_cs.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_labpc_cs.ko
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_isadma.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_labpc_isadma.ko
  CC [M]  drivers/staging/comedi/drivers/ni_labpc_pci.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_labpc_pci.ko
  CC [M]  drivers/staging/comedi/drivers/ni_mio_cs.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_mio_cs.ko
  CC [M]  drivers/staging/comedi/drivers/ni_pcidio.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_pcidio.ko
  CC [M]  drivers/staging/comedi/drivers/ni_pcimio.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_pcimio.ko
  CC [M]  drivers/staging/comedi/drivers/ni_routing.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_routing.ko
  CC [M]  drivers/staging/comedi/drivers/ni_tio.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_tio.ko
  CC [M]  drivers/staging/comedi/drivers/ni_tiocmd.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_tiocmd.ko
  CC [M]  drivers/staging/comedi/drivers/ni_usb6501.mod.o
  LD [M]  drivers/staging/comedi/drivers/ni_usb6501.ko
  CC [M]  drivers/staging/comedi/drivers/pcl711.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl711.ko
  CC [M]  drivers/staging/comedi/drivers/pcl724.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl724.ko
  CC [M]  drivers/staging/comedi/drivers/pcl726.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl726.ko
  CC [M]  drivers/staging/comedi/drivers/pcl730.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl730.ko
  CC [M]  drivers/staging/comedi/drivers/pcl812.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl812.ko
  CC [M]  drivers/staging/comedi/drivers/pcl816.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl816.ko
  CC [M]  drivers/staging/comedi/drivers/pcl818.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcl818.ko
  CC [M]  drivers/staging/comedi/drivers/pcm3724.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcm3724.ko
  CC [M]  drivers/staging/comedi/drivers/pcmad.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcmad.ko
  CC [M]  drivers/staging/comedi/drivers/pcmda12.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcmda12.ko
  CC [M]  drivers/staging/comedi/drivers/pcmmio.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcmmio.ko
  CC [M]  drivers/staging/comedi/drivers/pcmuio.mod.o
  LD [M]  drivers/staging/comedi/drivers/pcmuio.ko
  CC [M]  drivers/staging/comedi/drivers/quatech_daqp_cs.mod.o
  LD [M]  drivers/staging/comedi/drivers/quatech_daqp_cs.ko
  CC [M]  drivers/staging/comedi/drivers/rtd520.mod.o
  LD [M]  drivers/staging/comedi/drivers/rtd520.ko
  CC [M]  drivers/staging/comedi/drivers/rti800.mod.o
  LD [M]  drivers/staging/comedi/drivers/rti800.ko
  CC [M]  drivers/staging/comedi/drivers/rti802.mod.o
  LD [M]  drivers/staging/comedi/drivers/rti802.ko
  CC [M]  drivers/staging/comedi/drivers/s526.mod.o
  LD [M]  drivers/staging/comedi/drivers/s526.ko
  CC [M]  drivers/staging/comedi/drivers/s626.mod.o
  LD [M]  drivers/staging/comedi/drivers/s626.ko
  CC [M]  drivers/staging/comedi/drivers/usbdux.mod.o
  LD [M]  drivers/staging/comedi/drivers/usbdux.ko
  CC [M]  drivers/staging/comedi/drivers/usbduxfast.mod.o
  LD [M]  drivers/staging/comedi/drivers/usbduxfast.ko
  CC [M]  drivers/staging/comedi/drivers/usbduxsigma.mod.o
  LD [M]  drivers/staging/comedi/drivers/usbduxsigma.ko
  CC [M]  drivers/staging/comedi/drivers/vmk80xx.mod.o
  LD [M]  drivers/staging/comedi/drivers/vmk80xx.ko

--uZ3hkaAS1mZxFaxD
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--uZ3hkaAS1mZxFaxD--

