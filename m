Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C12C4B2A
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Nov 2020 00:02:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A601C870F8;
	Wed, 25 Nov 2020 23:02:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzowV-FR4vrR; Wed, 25 Nov 2020 23:02:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B495870BD;
	Wed, 25 Nov 2020 23:02:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A533E1BF589
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 23:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9415B87642
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 23:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NIvlfZWJzcnr for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 23:02:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B80D8875EC
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 23:02:45 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z7so103674wrn.3
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 15:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ha42UWMtlXOL8kfvC1XpFKttY73p7G2gxviD5bIo2Ac=;
 b=cK16XuXEr1UlZZi/GgHF7dItPstb+7yZ2QUTp5Dxvdc6OIX52ygirnUAKuRVBOH+dK
 A20pmgUIw2HuGZFFAXCmBSAdjpUAnHlbQW6vzVJQphFFEbO8NHcI7pY1E1IYv6o5k0Qf
 jXWsM0ddqTXTn/1nZTXycpkYVMfbhxZxJ9mV7kOEU+Tec/es0pgNM20lzmzFkZBYIURn
 HK2FiFuW7CXMZxeXIL3yJ5bCH/J8M2hkcorgk3PecLezXYs+oTw3zVRlNq6FEGJfSXMe
 e5NpXkmlA2dB6AmhViUGWqJQAiQop1G/7Q0C0bZUhlLDOGEFt9XX9+Dv47nZ0Rj6T1x/
 IsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ha42UWMtlXOL8kfvC1XpFKttY73p7G2gxviD5bIo2Ac=;
 b=HXGo2B2R/nl8UZ6KVfo0BBZDRUQ5/8uBv5rtuszXK1DxveEta2f5prCdLLRbw4pCYg
 A6dCSuL398HCS6qB4xX3GGqCE1GOm2kg+pDqPCCDDvstyX9npABkifjViWdeMPUFrb2j
 c8Xx57uuo+wbccAoyxs7+m4t/yj7AUrCRA+XqzbV5zaRP9N1Hht5K+WaykYFmHZ0zGRx
 oeWw51xf3LU5wKng40oOfeXCTGcf3bDcfsc+jEr9llgkMJu1JnsTn8r5iCDTbxeb73is
 baoM+A/V5sJWDpVfOh7F798pPDB5gnTV/t7o/qxDpr8WgrRAbFgusn05WK87ZZMBcnXB
 xhTw==
X-Gm-Message-State: AOAM532Yomj3pcfwjYhxVXOF+eWFZlQD5tpMPtllyoZqXh3fHvs/RhCC
 krSko//QZb1W1DwjYE0XVRg=
X-Google-Smtp-Source: ABdhPJzir63ZhkohioP0Ktx42tkGcEWW5m4eKxg+CUjAscHddZDwqHZSdjbm/E0JNHFBggGwkKFODQ==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr180470wrs.235.1606345364309; 
 Wed, 25 Nov 2020 15:02:44 -0800 (PST)
Received: from [192.168.1.122]
 (cpc92720-cmbg20-2-0-cust364.5-4.cable.virginm.net. [82.21.83.109])
 by smtp.gmail.com with ESMTPSA id u129sm5552667wme.9.2020.11.25.15.02.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Nov 2020 15:02:43 -0800 (PST)
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
 <202011241324.B3439A2@keescook>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <99a9ffd7-6356-b81d-6e08-7ed74b6fb82c@gmail.com>
Date: Wed, 25 Nov 2020 23:02:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <202011241324.B3439A2@keescook>
Content-Language: en-GB
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 tipc-discussion@lists.sourceforge.net,
 Linux Memory Management List <linux-mm@kvack.org>,
 Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com,
 Joe Perches <joe@perches.com>, linux-integrity@vger.kernel.org,
 target-devel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjQvMTEvMjAyMCAyMToyNSwgS2VlcyBDb29rIHdyb3RlOgo+IEkgc3RpbGwgdGhpbmsgdGhp
cyBpc24ndCByaWdodCAtLSBpdCdzIGEgY2FzZSBzdGF0ZW1lbnQgdGhhdCBydW5zIG9mZgo+IHRo
ZSBlbmQgd2l0aG91dCBhbiBleHBsaWNpdCBmbG93IGNvbnRyb2wgZGV0ZXJtaW5hdGlvbi4KClBy
b3ZlcyB0b28gbXVjaCDigJQgZm9yIGluc3RhbmNlCiAgICBjYXNlIGZvbzoKICAgIGNhc2UgYmFy
OgogICAgICAgIHRoaW5nOwogICAgICAgIGJyZWFrOwogZG9lc24ndCByZXF1aXJlIGEgZmFsbHRo
cm91Z2g7IGFmdGVyIGNhc2UgZm9vOiwgYW5kIGFmYWlrCiBuby1vbmUgaXMgc3VnZ2VzdGluZyBp
dCBzaG91bGQuICBZZXQgaXQsIHRvbywgaXMgImEgY2FzZQogc3RhdGVtZW50IHRoYXQgcnVucyBv
ZmYgdGhlIGVuZCB3aXRob3V0IGFuIGV4cGxpY2l0IGZsb3cKIGNvbnRyb2wgZGV0ZXJtaW5hdGlv
biIuCgotZWQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
