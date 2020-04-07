Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4F41A11F8
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0166D8773E;
	Tue,  7 Apr 2020 16:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8QEJs5D99Hm; Tue,  7 Apr 2020 16:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08AEE87667;
	Tue,  7 Apr 2020 16:45:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1CD11BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EACC87631
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q+VUxPd4zU89 for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:44:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B8398762A
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277879;
 bh=CVWZqr0vbdI4BRGrrC+O1eafu/NT+eXgog9BjZh2TZ0=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=BRCqH2crnhHi6WRZe7jJDU02MnXOewXSmfYF+iiSwVyPgsnn0Bo0LuSkQb5JyckWJ
 GHDzfQJHgndLK4Y3+C7hKwLam7bvEatmkXyLRtit7wqKMjiUDkSaWHxrqKYU8D8ahk
 MEE07IfRTls8tK4NoO4WAcKtG4iAkEjHTkP1cMgI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MpUUm-1iwOPC35Nk-00prOD; Tue, 07
 Apr 2020 18:44:38 +0200
Date: Tue, 7 Apr 2020 18:44:36 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 0/2] staging: vt6656: Cleanup of the
 vnt_get_frame_time function
Message-ID: <20200407164436.GB3495@ubuntu>
References: <20200407162959.7318-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407162959.7318-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:foOI2ujcSFfDqvVtgUQuxBq7VpIRd5USMGWw0NS8au++8K+eKYv
 syu2X6epxKsPRZXlp6bn4GgoY32QcUBZQNlA4Paz/U3NO7n7NzQEmj8EOG5vrlg720hL1wb
 RFFCnhZRBRjQAd1uFaTXuU97tXOpPqvXjDRrzfGV2dWu3tvmQazisCzFadx/I415O0mN7qY
 A03KI1FrXTw6wYWJ56Ddw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5+T77fietFc=:rlohqya9KKLUCHck893yKz
 +6f4faj+56xUP2I0E3UsnGhIpzDCi4bZ8+R3IN2pj7bi592oqm97s0uGK50j9+oprv5KigEZD
 dQ49nnl+9h/XXYKC7J6myYtIkI3NhgFj/9WgVtyCVKo987phiti/7a88w8ZRwnHjoce+REKee
 QJSoq1SdFYJHpXxozgmRZ/hRMcVZ7qrUOmvl45YpsjKVaVIgaLtPICeqGR12av+Hs0fAKvP0D
 UdyBjOqfcQMRs6w9mu2wsy7cJxRwDCeygRMJ2en25L71CwcdOAFa/fJFHF2Im+WDJ3aMdq/7A
 WiNZtVW3TxQp7MoAc1nwP/PpmjKjkNOOz8s4mQ+xx0co6L16rfFRdqGg2UBwVpoZ9xxf/gaX7
 q9vXSiCb/a9XSj4sNNhgmLfRXHd4X4sGpfiOZi/077VXYkgbxwJdjxx0rEPr3Y60LXkKbrjcB
 Hm6Z2DW70luSHktVmDcwOcc6BEQRegodF6lvVShDiEspM1/f/GMEJBRUnX7U0S2moIq8jtyYp
 p9Hcf9W0fPORHz9Sy/q93pb2hZRzrCe90fDE0Q1j72IWUCzIYshn9xfHc1inET8/lFEd892Hn
 vhUZYSgB4UAjnDWTz6FwLgz0LkdrKi+c/oQR8cVSVW3B+mG3oR8FtjkJbBaQthCNzIDe+Yutx
 AoeuZHT1HpnLjNOjbektaSTSglHG4KAqs/DQOmqXKy/GZ1TPiMlRozd1mJTjqhQV4ehISiKf7
 zO2q5ETpqUdHLRemAN77l03RF0nY5bsGUnBSVtMCJH+6yrzdSy7p1tSUtZJjLOY2Xzh8QVf45
 7Lsn/L0t3A7RnlVJIE4mxckPRYXKpI0+1C+Kz6ZrzykFlYCCGkvgFaap7sgANKDO3tS/y/eGO
 m3ryTtyjpybG04+gbAlG6wnBIIZ4CFaX1ten0aKPQigAp/oB28QfYebSi8hib4+urlr474075
 PSC54vpy/EwvFh+tVQs1mHI8oWNwMR5Ij0/jsR77MYEO058iwr7kYJI/HuT4DwSJlsOkKbXnm
 MhJggQS+IGh6Lfnjg+YhlHa6ZpqIJsKdx/cf35jQeZ8MyHog72T1tNL5kWoR44Bu2RAC9KudT
 iSeeo2MEOjkgN/Bw5YTNU4xPmXVMzKEaL1lvSqz023QHncgZoM/dKvRMIUnkw5Tw4tDN/uxPH
 6g1Y/76XArKZtFb0ysPEXnokjGbKVheJI55v/7A4/MRUcmApzVs+slyPzZoBe+Hb5XbqZK+mI
 kwwH3kaB4OqAbDiKy
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 07, 2020 at 06:29:57PM +0200, Oscar Carter wrote:
> This patch series makes a cleanup of the vnt_get_frame_time function.
>
> The first patch makes use of the define RATE_11M instead of a magic
> number. The second patch remove unnecessary local variable initialization.
>
> Changelog v1 -> v2
> - Not use the ARRAY_SIZE macro to compare against the tx_rate variable.
>
> Oscar Carter (2):
>   staging: vt6656: Use define instead of magic number for tx_rate
>   staging: vt6656: Remove unnecessary local variable initialization
>
>  drivers/staging/vt6656/baseband.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> --
> 2.20.1
>
Don't review this patch series as I have sent a new version. Sorry.

Thanks
Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
