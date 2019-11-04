Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6134AED844
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 05:36:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C0848A5CD;
	Mon,  4 Nov 2019 04:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbiEM5C0xpiO; Mon,  4 Nov 2019 04:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8478B8A593;
	Mon,  4 Nov 2019 04:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 999671BF372
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 04:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 922858A365
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 04:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kId18oOL6zGu for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 04:36:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 256718A353
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 04:36:46 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id 15so16364528qkh.6
 for <devel@linuxdriverproject.org>; Sun, 03 Nov 2019 20:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZLgZcvhJjOGhGgB5eDSXNRDxozk3YfD0qt93J2vZH8Q=;
 b=h/ngSt/0LguupexOPjOpR1IsHkLhqh/uhz7IJ7kkP69D0Ry4IbALAnIZy93ZlbN7Ir
 8N/3Ntc3RVStDGwyKm27ruyMqfzDWOt1PcOdu9KEo1I9h9AbnHIYAJFGiNZY9wpmjkDV
 I8LKjdGllvdxbwFKUpR+w0qfp6LOorKmG8vTY0zg8rLhYd3e54nkAAKyDsn8Yff4oLpW
 uSzNSAVrSRT3qWnFAKl5pdY6FDt0UkMVvrXywTG3jQNbYKY7xep2LuM36LtPVAKgsevS
 4LZr8ecfgjn3m37mbcF1XUIk2W82UzViMzpAh+9KLLmC6wR1dCQmxo9NuJRpxdzcmNC1
 5Pyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZLgZcvhJjOGhGgB5eDSXNRDxozk3YfD0qt93J2vZH8Q=;
 b=MdjaiyYbcwDgqiF5vOvWc/325xKpvZeD2JZLjwoKAcIWAFtnL7LmDiOaBegFQdn5B6
 2iuM4SugePiMxkv0kTwf7maJbIXNqLIPFfJvpRQlmvWpgXbuDNesmJgNfPJdFSnsR3FW
 HpnPkYd3R1XVfdIGTzzwXzR6baPE8vWLxkQB7wEDuaqrMjagLx4mM9Q0EOMAHcyzdUia
 mlwpSQBYCB07aH4lZICNtnsOU4tPwaJeIyXd0Blnz7ZRydYlm19UK+mRPfZ5dY3o5r3K
 aE2VjsnBtBmVj9Sjg1B/8dg2WPiUterVsRJv4d2Y0YsXXBGS5Ule6WbEhMmP3hAKhPfg
 a0Kw==
X-Gm-Message-State: APjAAAWzleIghXQkt6P80gBWm4opyj/JIeY0KJBuvLyCaAXgfCmXxI6B
 hLZWLpjWgS+n6u0fKnMbwCM=
X-Google-Smtp-Source: APXvYqw62+FgpfqqLbgeJmlLh9WhBZMHM6GXrpIjwHJQU6NAC1YX55ZF7qvIig8Pz+13znFnzFNZgA==
X-Received: by 2002:ae9:d60f:: with SMTP id r15mr20937232qkk.207.1572842205086; 
 Sun, 03 Nov 2019 20:36:45 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id t20sm2275746qtq.55.2019.11.03.20.36.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Nov 2019 20:36:44 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 4E47721903;
 Sun,  3 Nov 2019 23:36:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 03 Nov 2019 23:36:43 -0500
X-ME-Sender: <xms:2aq_Xa9yFKGdUA5zRabXV2-8wVSTaGzKdUQFa_MEvNrnbcEHQM7WDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudduvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepuehoqhhu
 nhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucfkphepud
 eijedrvddvtddrvdehhedrvdeknecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhn
 odhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejje
 ekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhn
 rghmvgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:2aq_XSVq7OPhkzzt9dsP_OrhV1cZDcmc0EC82s8iLbn1hX51Ai6dQw>
 <xmx:2aq_Xdpqi_GI_vch_O4HyO8Wr4hBKXMjgre8gTDpxh3PFqAsQPExgQ>
 <xmx:2aq_XckY4TpXzl9iRM-V8EA9BIN9qc78w8bRBqZ9WqzUVnLP3M7D7w>
 <xmx:26q_XV_T1Rzff5BsIYIdOt0V2A0YOJsXGxlaqXZzbgsKyL3Z06QJVWuYi0Y>
Received: from localhost (unknown [167.220.255.28])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F92D3060057;
 Sun,  3 Nov 2019 23:36:40 -0500 (EST)
Date: Mon, 4 Nov 2019 12:36:32 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Message-ID: <20191104043632.GB182@boqun-laptop.fareast.corp.microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, "will@kernel.org" <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Michael,

On Thu, Oct 03, 2019 at 07:03:19PM +0000, Michael Kelley wrote:
> Add ARM64-specific code to make Hyper-V hypercalls and to
> access virtual processor synthetic registers via hypercalls.
> Hypercalls use a Hyper-V specific calling sequence with a non-zero
> immediate value per Section 2.9 of the SMC Calling Convention
> spec.
> 
> This code is architecture dependent and is mostly driven by
> architecture independent code in the VMbus driver and the
> Hyper-V timer clocksource driver.
> 
> This code is built only when CONFIG_HYPERV is enabled.
> 
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  MAINTAINERS                 |   1 +
>  arch/arm64/Kbuild           |   1 +
>  arch/arm64/hyperv/Makefile  |   2 +
>  arch/arm64/hyperv/hv_hvc.S  |  44 +++++++++++++++
>  arch/arm64/hyperv/hv_init.c | 133 ++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 181 insertions(+)
>  create mode 100644 arch/arm64/hyperv/Makefile
>  create mode 100644 arch/arm64/hyperv/hv_hvc.S
>  create mode 100644 arch/arm64/hyperv/hv_init.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d464067..84f76f9 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7566,6 +7566,7 @@ F:	arch/x86/kernel/cpu/mshyperv.c
>  F:	arch/x86/hyperv
>  F:	arch/arm64/include/asm/hyperv-tlfs.h
>  F:	arch/arm64/include/asm/mshyperv.h
> +F:	arch/arm64/hyperv
>  F:	drivers/clocksource/hyperv_timer.c
>  F:	drivers/hid/hid-hyperv.c
>  F:	drivers/hv/
> diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
> index d646582..2469421 100644
> --- a/arch/arm64/Kbuild
> +++ b/arch/arm64/Kbuild
> @@ -3,4 +3,5 @@ obj-y			+= kernel/ mm/
>  obj-$(CONFIG_NET)	+= net/
>  obj-$(CONFIG_KVM)	+= kvm/
>  obj-$(CONFIG_XEN)	+= xen/
> +obj-$(CONFIG_HYPERV)	+= hyperv/

I did a kernel built with CONFIG_HYPERV=m today, and found out this line
should be (similar to x86):

	+obj-$(subst m,y,$(CONFIG_HYPERV))      += hyperv/

, otherwise, when CONFIG_HYPERV=m, files in arch/arm64/hyperv/ will be
compiled as obj-m, and symbols defined in those files cannot be
used by kernel builtin, e.g. hyperv_timer (since CONFIG_HYPERV_TIMER=y
in this case).

A compile/link error I hit today is:

| /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98: undefined reference to `hv_set_vpreg'
| aarch64-linux-gnu-ld: /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98: undefined reference to `hv_set_vpreg'

[...]

Besides, another problem I hit when compiled with CONFIG_HYPERV=m is:

| ERROR: "screen_info" [drivers/hv/hv_vmbus.ko] undefined!

, which can be fixed by the following change.

Regards,
Boqun

---------------->8
diff --git a/arch/arm64/kernel/efi.c b/arch/arm64/kernel/efi.c
index d0cf596db82c..8ff557ae5cc6 100644
--- a/arch/arm64/kernel/efi.c
+++ b/arch/arm64/kernel/efi.c

@@ -55,6 +55,7 @@ static __init pteval_t create_mapping_protection(efi_memory_desc_t *md)

 /* we will fill this structure from the stub, so don't put it in .bss */
 struct screen_info screen_info __section(.data);
+EXPORT_SYMBOL(screen_info);

 int __init efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md)
 {
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
