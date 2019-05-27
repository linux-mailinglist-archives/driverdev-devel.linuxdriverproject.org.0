Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B25682B07B
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 10:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6CE6858DD;
	Mon, 27 May 2019 08:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RD0dt3e9Fvrv; Mon, 27 May 2019 08:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1E2A854D0;
	Mon, 27 May 2019 08:43:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD4651BF398
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 08:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C451586225
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 08:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xLWfHvxZ1wv for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 08:43:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0778486223
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 08:43:51 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id l17so14181225otq.1
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 01:43:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SPyeTzPFoh+1jcHD1T6EeO+I9ugNzJgCyHNSVSPB+Tc=;
 b=Lh2dDFH3DooJ5k4QCZsc8aKPMeV8A1Ts5DDslO45gCvs/emfGaEM/yn8QTl4Kl3Gsj
 ACEZoMqqFTjtqOdcy71Mh7sKxwpdDWjKsARcf72oq5M+ns8fHzCn/tgt7wUHRPVzJJ72
 eJBHEc9NpbJ/oXNECbBU/82tuX5iiJAsh6xtJiqNNapxsGqhgVzDYlrcZRxoc91KpY/7
 RBmEC4u9d9wWoz8selXeYbgYRg8CGSynNR1hxwBViCyPGP55wDYV3OvjfBDYVwqaXUuq
 dSFOyxnzcn+bBWBHsfdBJ0HS5qAsNZCWms2mbiDqrDyJiqACCcofOxNUX0k1UqfdfgVB
 owJw==
X-Gm-Message-State: APjAAAXU4CxpDV+goIzlCqoljRz/1X4TDVBdKIeeLeuDBrlSI1aRNfhx
 BL6Hfh65LyxtvdTok2hwk+0f4VeVONHwCebSExo=
X-Google-Smtp-Source: APXvYqxIlLFH84yhUFerMj/YlUDBNDBRTGJTxhPDFRXnfvuo7mYZbz39ugxbhoZlfat/iRijWwRpROWfadWrjYSeMCE=
X-Received: by 2002:a9d:7dd5:: with SMTP id k21mr43860970otn.167.1558946630255; 
 Mon, 27 May 2019 01:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558362030.git.mchehab+samsung@kernel.org>
 <4fd1182b4a41feb2447c7ccde4d7f0a6b3c92686.1558362030.git.mchehab+samsung@kernel.org>
In-Reply-To: <4fd1182b4a41feb2447c7ccde4d7f0a6b3c92686.1558362030.git.mchehab+samsung@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 27 May 2019 10:43:39 +0200
Message-ID: <CAJZ5v0iiSo=yoyZTt6ddf5fBRGy1wSvzmA-ZaHH33nivkSp22Q@mail.gmail.com>
Subject: Re: [PATCH 10/10] docs: fix broken documentation links
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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
Cc: kvm@vger.kernel.org, Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-i2c <linux-i2c@vger.kernel.org>, linux-kselftest@vger.kernel.org,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 the arch/x86 maintainers <x86@kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 xen-devel@lists.xenproject.org,
 "open list:EDAC-CORE" <linux-edac@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-security-module@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 20, 2019 at 4:48 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Mostly due to x86 and acpi conversion, several documentation
> links are still pointing to the old file. Fix them.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

For the ACPI part:

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
