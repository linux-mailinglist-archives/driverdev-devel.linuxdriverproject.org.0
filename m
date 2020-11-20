Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F12BB8CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 23:21:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C48BB2E109;
	Fri, 20 Nov 2020 22:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6l+tQKaWFgjd; Fri, 20 Nov 2020 22:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DB102E110;
	Fri, 20 Nov 2020 22:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C058D1BF2B0
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 22:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E99F2E110
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 22:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EiYx-KO77tsZ for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 22:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A2832041B
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 22:21:29 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id g15so9970179ybq.6
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 14:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=29/AaAKKWIjlxKBDiu42mXe16/c3LUzQvTdn0Wctw9g=;
 b=th/UjqVcversiy9gEUr46cKRrhHywr0iTgf9mzUejm+T3/Jtu2c6ftjob7N1dnOe2S
 rGVMit/4Gqy7ZDqW+do8x9wI8RCPt/cmuWncILsoBuux3CBAtfG8gT+eTL8wiBVSM5EH
 rDgxqkIvK+vUXnfhgj71GxYIUQH1hInVNMbCl5+3prik9RGhi+hsmul85xXuf9uJVr2L
 NGLQGWDmOXXHg4l9XujW0HrVyacbE3Q1QSLAkLJ0BjE5AdFqhLyeU3T8/6+nJ9hH0JSR
 o1vAVeqr6Bt+/W6rGIwrn7PuvAvMGRmk1Avx4k6vjCg8etglRiDTMnimrqKcX/KEsNCP
 0CAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=29/AaAKKWIjlxKBDiu42mXe16/c3LUzQvTdn0Wctw9g=;
 b=UJ0Nfy6FDsXIk37y86cpHcLuDAxYHE0TAaeDI5OKONhxRCdkaHriwCePbXzjyPQWpC
 U5DNf/V3Sz33DFBb9SGjjSxnvThhQkkkTM7g9P2Jfhe2KI7vzUaZAngdPbdQ3uNqsN5W
 sHS4siibhUzK41zEQiyPoExGVWx/viwsMBJJH3M09SlacmlzmaKiOQPgE25RiXN5lTx2
 u97f5DuErSsL3gpc0wzvIkl5j+boH/hJeQvfcTESIspNnnDr07syuXPuodPmr/Q4pQKx
 e5OjoWDfFjGXqVYZ1S2MbyTuJ1eIshX7sU/w27tAjikExKR/5BCHG79Htc0AA/zruA+c
 Zlug==
X-Gm-Message-State: AOAM532EeqeSXn71g5dBhPIfUTOQnT1Q6YIsXYXEs0BH3FuV37ejQsBF
 ppw6pvEIgPDuFB+wO6uMiCeR/F8pUkGdtZ0wCWM=
X-Google-Smtp-Source: ABdhPJzYUhkcjTyH5GIcOV5fWMsl+OUdzem471zLY9usW3RhV8izQIRbyESMTmZwFikqgbfOQQqVvSSQCZzBPJX4q90=
X-Received: by 2002:a5b:40e:: with SMTP id m14mr22113400ybp.33.1605910888617; 
 Fri, 20 Nov 2020 14:21:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org>
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 20 Nov 2020 23:21:17 +0100
Message-ID: <CANiq72=E_gEVvqUUTSqU4zegC2=yZSTM4b=4G-iofp6d3=UgWQ@mail.gmail.com>
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
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
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 Kees Cook <keescook@chromium.org>, Linux-MM <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-renesas-soc@vger.kernel.org,
 linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org,
 netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Gustavo,

On Fri, Nov 20, 2020 at 7:21 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> Hi all,
>
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.

Thanks for this.

Since this warning is reliable in both/all compilers and we are
eventually getting rid of all the cases, what about going even further
and making it an error right after?

Cheers,
Miguel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
