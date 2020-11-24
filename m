Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2669E2C2A0F
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Nov 2020 15:47:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A213286222;
	Tue, 24 Nov 2020 14:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRXPuZ-njvfk; Tue, 24 Nov 2020 14:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAE32861F6;
	Tue, 24 Nov 2020 14:47:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD6051BF954
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 14:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9523861F6
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 14:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PqbftmU9BQSH for <devel@linuxdriverproject.org>;
 Tue, 24 Nov 2020 14:47:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E0AE861A1
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 14:47:47 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5073206F9;
 Tue, 24 Nov 2020 14:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606229266;
 bh=KHWIOvsVxIgxzJ3ANvrXr+IcifXvCH3d9eC+5p4MJwo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tWoPDQgvsKVPCfxibPNl9c0zBQ9NfBrnsDyv8UIAtPJxHLfF4o1CuP3vwUt19y/P8
 Y66kkjj2Cim4kMyRQiiYzb1whNr+v/N+nMKfcHqv3RaX8mBnUDrFmNddDbw9/dIVnH
 xirANyC4hb8bYXXRvxw8qG9eYp8JWf8UX9D38PQM=
Date: Tue, 24 Nov 2020 08:47:54 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <20201124144754.GL16084@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
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
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 dm-devel@redhat.com, usb-storage@lists.one-eyed-alien.net,
 Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 wcn36xx@lists.infradead.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-scsi@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-rdma@vger.kernel.org, bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 oss-drivers@netronome.com, linux-mmc@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 reiserfs-devel@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 samba-technical@lists.samba.org, linux-fbdev@vger.kernel.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 linux-ide@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 23, 2020 at 08:38:46PM +0000, Mark Brown wrote:
> On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:
> > This series aims to fix almost all remaining fall-through warnings in
> > order to enable -Wimplicit-fallthrough for Clang.
> > 
> > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > add multiple break/goto/return/fallthrough statements instead of just
> > letting the code fall through to the next case.
> > 
> > [...]
> 
> Applied to
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> 
> Thanks!
> 
> [1/1] regulator: as3722: Fix fall-through warnings for Clang
>       commit: b52b417ccac4fae5b1f2ec4f1d46eb91e4493dc5

Thank you, Mark.
--
Gustavo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
