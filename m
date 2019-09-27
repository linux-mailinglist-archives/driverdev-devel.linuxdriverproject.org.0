Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 595EDC0635
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 15:20:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DD3786E1F;
	Fri, 27 Sep 2019 13:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EuMuxuZfky2X; Fri, 27 Sep 2019 13:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3251586AF2;
	Fri, 27 Sep 2019 13:20:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D8D51BF30F
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 13:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 17A1020377
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 13:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eokSOlm3ysQy for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 13:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 06D51200E5
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 13:19:56 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9140D21906;
 Fri, 27 Sep 2019 13:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569590396;
 bh=QzQz7ZiXIcGOh49IdE/RTlTP4ex+tVxPejLoeEZa8dw=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=PaBKATWkbRzVZXh6IpgDefnVwtuzn7+2QUymUowxLaBSzXiLP6SmdBrgeCcWbeM+z
 SLlK47h0XFHBIvmnbV+1bMVO0A3GE6sA/CPa+vZ3gKTl0hUwnAfXjWPxCJNTk58YIo
 5j0mP6RfSpN5KJG+/gHMbpH+kjJWVmRGmcrL+MyU=
Date: Fri, 27 Sep 2019 13:19:55 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Denis Efremov <efremov@linux.com>
To: devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: rtl8188eu: fix HighestRate check in
 odm_ARFBRefresh_8188E()
In-Reply-To: <20190926073138.12109-1-efremov@linux.com>
References: <20190926073138.12109-1-efremov@linux.com>
Message-Id: <20190927131956.9140D21906@mail.kernel.org>
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
Cc: , Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Denis Efremov <efremov@linux.com>,
 stable@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.3.1, v5.2.17, v4.19.75, v4.14.146, v4.9.194, v4.4.194.

v5.3.1: Build OK!
v5.2.17: Build OK!
v4.19.75: Failed to apply! Possible dependencies:
    00585495c4fa ("staging: rtl8188eu: refactor SwLedControlMode1()")
    859df6aa0d97 ("staging: rtl8188eu: cleanup inconsistent indenting")

v4.14.146: Failed to apply! Possible dependencies:
    00585495c4fa ("staging: rtl8188eu: refactor SwLedControlMode1()")
    2742a7dddae4 ("Staging: rtl8188eu: core: Use __func__ instead of function name")
    35a53b9a37ca ("staging:rtl8188eu Fix remove semicolon in do {}while(0)")
    3cedbfb85199 ("staging: rtl8188eu: rename variable")
    515ce733e86e ("staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames")
    7de2258b5c71 ("staging: rtl8188eu: replace NULL comparison with variable")
    819fa2a0d749 ("staging: rtl8188eu: use __func__ instead of function name")
    859df6aa0d97 ("staging: rtl8188eu: cleanup inconsistent indenting")
    b677f4ecf6ac ("staging: rtl8188eu: Fix spelling")
    c5fe50aaa20c ("Revert "staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames"")
    ceefaaced11e ("staging:rtl8188eu Remove unneccessary parenthesis")
    e8d93aca1b23 ("Staging: rtl8188eu: core: Fix line over 80 characters")
    f3139e621429 ("staging: rtl8188eu: Place the constant on the right side in comparisons")

v4.9.194: Failed to apply! Possible dependencies:
    00585495c4fa ("staging: rtl8188eu: refactor SwLedControlMode1()")
    2091eda1f21d ("staging: rtl8188eu: Put constant on right side of comparison")
    2742a7dddae4 ("Staging: rtl8188eu: core: Use __func__ instead of function name")
    35abf582a537 ("staging:r8188eu: replace rx_end member of recv_frame with pkt->end")
    3cedbfb85199 ("staging: rtl8188eu: rename variable")
    515ce733e86e ("staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames")
    7d2af82cc5f5 ("staging: rtl8188eu: In core directory, fixed 'missing a balnk line after declarations' warnings.")
    7de2258b5c71 ("staging: rtl8188eu: replace NULL comparison with variable")
    80c96e08c416 ("staging:r8188eu: remove unused WIFI_MP_*STATE and WIFI_MP_CTX* definitions")
    819fa2a0d749 ("staging: rtl8188eu: use __func__ instead of function name")
    859df6aa0d97 ("staging: rtl8188eu: cleanup inconsistent indenting")
    b677f4ecf6ac ("staging: rtl8188eu: Fix spelling")
    bb5cd2e531c0 ("staging:r8188eu: remove rtw_os_recv_resource_alloc function")
    c10364e1f4f6 ("staging: rtl8188eu: core: removes unecessary parenthesis")
    c5fe50aaa20c ("Revert "staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames"")
    cd30a3924932 ("staging:r8188eu: refactor recvbuf2recvframe function")
    dd2aa2501c92 ("staging: rtl8188eu: core: fixes tabstop alignment")
    de109778e7cf ("staging: rtl8188eu: Fix block comments warning")
    df47a14c2c8b ("staging:r8188eu: replace recv_frame->rx_(data|len|tail) with pkt->(data|len|tail) and remove unused recvframe_(put|pull|pull_tail)()")
    e038e67f0891 ("staging:r8188eu: update pkt->(data|tail|len) synchronously with rx_(data|tail|len) in recv_frame structure")
    e8d93aca1b23 ("Staging: rtl8188eu: core: Fix line over 80 characters")
    f3139e621429 ("staging: rtl8188eu: Place the constant on the right side in comparisons")

v4.4.194: Failed to apply! Possible dependencies:
    00585495c4fa ("staging: rtl8188eu: refactor SwLedControlMode1()")
    139737983db4 ("staging: rtl8188eu: Remove unnecessary pointer cast")
    2742a7dddae4 ("Staging: rtl8188eu: core: Use __func__ instead of function name")
    35abf582a537 ("staging:r8188eu: replace rx_end member of recv_frame with pkt->end")
    3cedbfb85199 ("staging: rtl8188eu: rename variable")
    515ce733e86e ("staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames")
    7a1586353b97 ("rtl8188eu: Add spaces around arithmetic operators")
    7b170bacbb13 ("staging: rtl8188eu: core: rtw_xmit: Use macros instead of constants")
    7d2af82cc5f5 ("staging: rtl8188eu: In core directory, fixed 'missing a balnk line after declarations' warnings.")
    7d7be350073e ("staging: rtl8188eu: core: rtw_xmit: Move constant of the right side")
    7de2258b5c71 ("staging: rtl8188eu: replace NULL comparison with variable")
    80c96e08c416 ("staging:r8188eu: remove unused WIFI_MP_*STATE and WIFI_MP_CTX* definitions")
    859df6aa0d97 ("staging: rtl8188eu: cleanup inconsistent indenting")
    8891bcac17da ("staging: rtl8188eu: add spaces around binary '*'")
    b677f4ecf6ac ("staging: rtl8188eu: Fix spelling")
    bb5cd2e531c0 ("staging:r8188eu: remove rtw_os_recv_resource_alloc function")
    bbfe286b07d8 ("staging: r8188eu: replace rtw_ieee80211_hdr_3addr with ieee80211_hdr_3addr")
    c10364e1f4f6 ("staging: rtl8188eu: core: removes unecessary parenthesis")
    c5fe50aaa20c ("Revert "staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames"")
    c60298c5869c ("staging: rtl8188eu: core: Replace memcpy() with ether_addr_copy() if ethernet addresses are __aligned(2)")
    d0beccb04e96 ("staging: rtl8188eu: don't cast to void* when calling memset()")
    dd2aa2501c92 ("staging: rtl8188eu: core: fixes tabstop alignment")
    de109778e7cf ("staging: rtl8188eu: Fix block comments warning")
    df47a14c2c8b ("staging:r8188eu: replace recv_frame->rx_(data|len|tail) with pkt->(data|len|tail) and remove unused recvframe_(put|pull|pull_tail)()")
    e038e67f0891 ("staging:r8188eu: update pkt->(data|tail|len) synchronously with rx_(data|tail|len) in recv_frame structure")
    e8d93aca1b23 ("Staging: rtl8188eu: core: Fix line over 80 characters")
    f3139e621429 ("staging: rtl8188eu: Place the constant on the right side in comparisons")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
