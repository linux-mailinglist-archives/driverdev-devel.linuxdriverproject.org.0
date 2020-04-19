Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFD51AF856
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 09:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24F4D203F3;
	Sun, 19 Apr 2020 07:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HJA4Czi6L1xZ; Sun, 19 Apr 2020 07:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA2962038B;
	Sun, 19 Apr 2020 07:47:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 052981BF473
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 07:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0223186096
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 07:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0jj7qQ-vRCLx for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 07:47:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8333D85F96
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 07:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587282450;
 bh=vUSOECUk4A1mxf1ROMn314fFRK9fMORoG5b7Bw2RiDE=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=L88xN24AYqj90BWGl/q2KoIEmUQBg9VI9P377qLfYrtGRzd2BycuRy3r2pnP9kaj3
 I4QgbDPnvoXLIXwzcXhOhwBVtQ0wrl04h+rnqgq/yumEoOZet5mkjgJjyjcAzWMp5Q
 SwzA1awLY6+T65DOcmYAh8ULPyKAX4iOdza6FDtY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mwwdf-1j2vsn0M6F-00yTuy; Sun, 19
 Apr 2020 09:47:30 +0200
Date: Sun, 19 Apr 2020 09:47:17 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 2/2] staging: vt6656: Fix functions' documentation
Message-ID: <20200419074717.GA3244@ubuntu>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
 <20200418123659.4475-3-oscar.carter@gmx.com>
 <adc4bc72-5c80-e8f4-8d48-052109ae18b7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adc4bc72-5c80-e8f4-8d48-052109ae18b7@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:C+eQwfMRlP9LtW3tNHYP23t/9OFkChviWB5f1D306aNEAqLQh/f
 PZq2e+MsIGdN5uaBB//2rSMKODQt3trR63byvjSBzXjQZp6GGdFHgSKSI890l5I4WYXVu/M
 SF67fTyzYlFK8evNfdqjSWxro4t4MZrBmtBPfQaDM+pbdFN4Y9WF2xAOQ8/FDt+dh/3If2E
 lFTPH9rS0aLBMiWv8d8YA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LMwP+G4IPtI=:j736PCtEgPykBb0xF2qwnY
 0TgUwgJv8SbU5ltOB9UImauPJ2uSmbsFHiPnBX+udnnR1Tp/jkfFYIQ2PqKJVMy5g5+CYNDeU
 DCWwUx+avuF8CCZgOYd0ROEFy0JM+sNc8j6zvXhhpRNaSgCJkEPllCBDM6DJXa8QzB/VMoV8n
 kIIzqUvKRbWn+SZLncD8iEJGx+A8KV2sbci0tNSzc8m9qKX6lA1bRy5Gnq/btlMKwKueVfMKH
 vtRwjCaWM7X0eWdpXA1JdyciVkBMlv5XSb4uh+xUlv7HM08BEd7xpr1DGBzmecV+h8RTr5GI8
 AdVvs51UeFnwhfyeBbi28iOmiBXPZEtJN/dBdK99eK9IDFVRTffBblClcfaQa9bCxd9FtIeXZ
 j5KG7opdj52/m5QOeaFGCr+c+hX+m6D25BiiXgtOZdgckFmFVPh/nAxF8CZ9W7zjYdxndy4i9
 KXr7WZU2GXim2Yc2QsLEXNpqunGPJZakysFE5KJ+nIoMSULSUf8tN9Iwd/lc6HcsmqQxxDkQu
 SruE/mlZrAmXAspwhSt1OvF8qAOayIvWrAwXBHB1viRxLSaEdoKkgxD95JlSK0SgZ+4pdRwuw
 KJnYD1MFIStcIZN5+zK+wUaTIVLcWiL/ZShbrci8Laz6jEdEns894856zHTZHhsz0lZhmmp6m
 yHcoIR45xUdVlOsGG1TgSlmUKayWyjitOaztf6dscXCyLLRK+quECuADuqdKzusYl8Sgpl7HY
 d19u1E99/cBaw2nMYsKPt08/qzVcPW6HflnQ1qThGz84S4L64omHvremoqwp9uQIgBgrnSAS7
 MNGQ2lcDxpDDCSKEkxVjtXKifQNPDKKXcyEQ7aqriz2AEHXrV6YXsAeg+0C861GIQSUG541yb
 kYoQZHBZJ/sv3ovPtHeU7mm+4fJTBuQPa5tO3Gm6KkF824F8AyxL/al28xx4pEVIxfzNq5I0+
 Gj+dv4G6TqebTgzXsRVGe85YlYwAL3ku6/r2fqYPnKUohSLh45afpetZ34Hkk9IYf17qLa+R4
 QLOE28iubMHH04Ti1YrX8fiBbQmXyopINcUh4gKDEjaeEsoqFZRNbJjPosUsr4MddB6XxbLvH
 Pacjy2rOc+IqmfWcWsw2QFJPNNo41WLxY3J0M4kBWouh1T/auhnosi/KbExPTVvY0+4a3Lv1H
 oByUJIYLNh46JzcZpeP+c9EFDL5PJRE5VBn0DIeH3bt4Imh9IPBm9c6Qqf7NfqUD7KWoyKsMM
 k3jmHouw+vYGtSUVg
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 18, 2020 at 07:05:53PM +0100, Malcolm Priestley wrote:
> Actually I don't really think the function descriptions are needed at all the
> names of the functions are enough.
>
Then, it would be better leave the documentation as it was before or remove it?

> card.c needs to be removed the bss callers to baseband.c, the tbtt's to power.c
> and the rest to mac.c
>
> Regards
>
> Malcolm

Thanks,
Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
