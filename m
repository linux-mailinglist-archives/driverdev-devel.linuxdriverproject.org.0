Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B21A100C6
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 22:28:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE12A22803;
	Tue, 30 Apr 2019 20:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsjauA0mf0DY; Tue, 30 Apr 2019 20:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6353A227AA;
	Tue, 30 Apr 2019 20:28:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 526991BF976
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 20:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F582834A7
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 20:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ds1tmR5LXYoh for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 20:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DFD0082412
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 20:28:18 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id z28so2323896pfk.0
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 13:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jXwghiICh1eldrtSalnqvtotlHEb2et8Ey19xhCS3H0=;
 b=mdV88kvrYudT0nZLfucRabRvuO0EPWDlGrWZgJ96nbG4LKfAgC51KKkrmI14gs87Rq
 R1DiK9TZMAv619dt9QSaPJtQx+tEnsEiAXSrGgvplyY4Cwt7NTwe2PREN0uSAO4JO0W9
 P7K++k8R5hp/FND53+VlCFCPZ07FQrKb9Sqkt2PCIUBF4rnRN9Eu1btvn/RGfDNl2tWS
 MEM/3hlh7SPSUviM8Jnnz3nOOckBbS1VDWiKbqm7+51gfFUV8YnDOSjS5UKicu1retSH
 9CCDaf1UqxsRgT+ON029FHL1IZx9rD7y/nVgzV1HnSVMujNO54T+eU4QllZvV6ZAKAtg
 hPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jXwghiICh1eldrtSalnqvtotlHEb2et8Ey19xhCS3H0=;
 b=dVrEhthTKqPQTgk+sFnWK+zRJCKZIldWTr8NmgldsXYzxOBezmm0pvB1Fub0/CnVCO
 IRCCIgRg1qgA6ivLx1aAq9K1rad09h3t13gNTp6IMUX0Yljjsj+RhDj8wXWKCk6dLnSA
 TlsA1F+67TDCpuO3DBnp3WowLaLsDPMl2idgDSVAcLUYdxePho+Hkpfp7vPpnRQiA98x
 hk4v04s68+mXuC34V7zMq7eE+dysggrmYAYxK882iO9i09hEkP/yEDOeaZ0Cl211qRuK
 Fqv45OUGZigHrZ8kl8Vu0+cD6+an2mJJ96yt7yjGRNpkiZLpuzcZBPv8oRFTatvhRDbk
 W/qQ==
X-Gm-Message-State: APjAAAXVXzjermUn0s7J7oDFioWS7Loa21T2t8Ua4CSACrgfx+rJv7Zp
 Cvzag6rC8C5LWSEJow//gljheudaooOg7b/N/BN6oQ==
X-Google-Smtp-Source: APXvYqyNhbvVoO4EjuJFxyBCDSxQDKib5dOhDjIMV3qxW+hQaE5MYK/II1MHlO9cTMehkRigVC31KPEmWP8nYj/4SVU=
X-Received: by 2002:aa7:8096:: with SMTP id v22mr73385240pff.94.1556656098122; 
 Tue, 30 Apr 2019 13:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190424185742.7797-1-natechancellor@gmail.com>
 <20190430091242.GA2269@kadam>
In-Reply-To: <20190430091242.GA2269@kadam>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 30 Apr 2019 13:28:06 -0700
Message-ID: <CAKwvOdnnozOfk2e_8wFq6GALZWcL6qrXFcRMBEkgck8p8TyMbg@mail.gmail.com>
Subject: Re: [PATCH] staging: kpc2000: Use memset to initialize resources
To: Dan Carpenter <dan.carpenter@oracle.com>
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
 Nathan Chancellor <natechancellor@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 2:12 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> Also it was risky from a process perspective to delete the stray tab
> from the next line because some one could have argued that it was
> unrelated or that the whole line should be removed instead.  You would
> have had to redo the patch for something silly... #YOLO #LivingOnTheEdge

Future patches to Dan shall contain the hashtag #YOLO.
-- 
Thanks,
~Nick Desaulniers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
