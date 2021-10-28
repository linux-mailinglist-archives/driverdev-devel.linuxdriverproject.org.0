Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F91B43E46E
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Oct 2021 16:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8AD64060E;
	Thu, 28 Oct 2021 14:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dpJGtGddHrNL; Thu, 28 Oct 2021 14:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17316403D0;
	Thu, 28 Oct 2021 14:58:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAAE81BF5F8
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 14:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA36C6060F
 for <devel@linuxdriverproject.org>; Thu, 28 Oct 2021 14:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ksot-G7pNZ4R for <devel@linuxdriverproject.org>;
 Thu, 28 Oct 2021 14:58:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 32395605A5
 for <devel@driverdev.osuosl.org>; Thu, 28 Oct 2021 14:58:19 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id v10so4296037pjr.3
 for <devel@driverdev.osuosl.org>; Thu, 28 Oct 2021 07:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QGXF5oWPYn5wMkU6IdsSHBlyLVAw8pj3F3Vqsyv9n4A=;
 b=P6eCMloWeqINUEj9ranXxT68xKyKG+nZeXgfOAjzUbfehAu/rt22mvQK6Cv6/wEVhf
 ILloehy+H3AmheBwCsJOWXj/ExWSGoUX7OnMiNGVroCNOp4k9Vgiy6/GMu5fFT6Zszgf
 KXJW6oVWAEOgw+nZb3EgWed+o32RfN8X4ovTA7EnWrvpelJNMO8xQoTFTMttXOUzUZwb
 0Xly/nYCzxtW3j12hxAVfUgxFKxGC5/vHAA21WJTYrU6D50yjoLIq2WotwRspD3zmaKZ
 masg4S+YLS4wCtzhqaBIf6crO0VS8UF0feqHXJVclVA/LnZwLrGD4PHQtvtjpiCHo8A/
 G3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QGXF5oWPYn5wMkU6IdsSHBlyLVAw8pj3F3Vqsyv9n4A=;
 b=4ZlLHyuN35pxMguEoUgUhVYPrCMQw8JJXHjbHInWFdAC6AdUyklRDjOY8WcSLq4v0F
 O/xKK8OqAptfwfYGqUW/TiwHo18vA1HAUlMJ/BKLLAuZFCjfNUs3X3fHIVN5kxT4cvnS
 Ap9lFl3CXIkTNw8FOwQgCGrGt4L2shrpzQRpV0ivRw8ocZTE8nPsMp/nmk1qOSoTmbUk
 dDKo4xaOQFCfFrG1gG1V6n9bhcJB1Ofyerguw6rnzQjO2Avpg82/SXgGGdnCoMXP7mRw
 3nSu5QOmqZEMfE7dGEL7K8dfGAbXokokbZBeD0nqy9tmqvXM0bAHBmfWRpp622LV6rxf
 6J3g==
X-Gm-Message-State: AOAM532ros8LwJJ68qIAFNKyCxDOo4e0C5izZ3zz08yd4vhBYICQhTjM
 i3NpaRJk4BWPECEjEWJtKy6Rkg==
X-Google-Smtp-Source: ABdhPJzktVilKhrXQKOyuMENgwV5ET+AbhuNqDf8NyijYHCTVEjAfRDleaAvbK/MY9xZIowkHZVQMA==
X-Received: by 2002:a17:90b:388a:: with SMTP id
 mu10mr5243207pjb.0.1635433098398; 
 Thu, 28 Oct 2021 07:58:18 -0700 (PDT)
Received: from google.com (157.214.185.35.bc.googleusercontent.com.
 [35.185.214.157])
 by smtp.gmail.com with ESMTPSA id m10sm8036396pjs.21.2021.10.28.07.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 07:58:17 -0700 (PDT)
Date: Thu, 28 Oct 2021 14:58:13 +0000
From: Sean Christopherson <seanjc@google.com>
To: syzbot <syzbot+05017ad275a64a3246f8@syzkaller.appspotmail.com>
Subject: Re: [syzbot] BUG: spinlock bad magic in synchronize_srcu
Message-ID: <YXq6hTAOhOaWGsNA@google.com>
References: <0000000000000f73a805afeb9be8@google.com>
 <000000000000792dda05cf604775@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000792dda05cf604775@google.com>
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, linux-pci@vger.kernel.org,
 dave.hansen@linux.intel.com, hpa@zytor.com, devel@driverdev.osuosl.org,
 robh@kernel.org, f.fainelli@gmail.com, joro@8bytes.org, x86@kernel.org,
 info@cestasdeplastico.com, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel-owner@lists.infradead.org, linux-media@vger.kernel.org,
 tcs_kernel@tencent.com, sfr@canb.auug.org.au, syzkaller-bugs@googlegroups.com,
 lorenzo.pieralisi@arm.com, bp@alien8.de, linux-rpi-kernel@lists.infradead.org,
 bhelgaas@google.com, tglx@linutronix.de, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, pbonzini@redhat.com, vkuznets@redhat.com,
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 27, 2021, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit eb7511bf9182292ef1df1082d23039e856d1ddfb
> Author: Haimin Zhang <tcs_kernel@tencent.com>
> Date:   Fri Sep 3 02:37:06 2021 +0000
> 
>     KVM: x86: Handle SRCU initialization failure during page track init
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=143e2b02b00000
> start commit:   78e709522d2c Merge tag 'for_linus' of git://git.kernel.org..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=2150ebd7e72fa695
> dashboard link: https://syzkaller.appspot.com/bug?extid=05017ad275a64a3246f8
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10b72895300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14c42853300000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
> 
> #syz fix: KVM: x86: Handle SRCU initialization failure during page track init

#syz fix: KVM: x86: Handle SRCU initialization failure during page track init
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
