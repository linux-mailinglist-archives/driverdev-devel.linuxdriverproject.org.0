Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 677BF1B8686
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 14:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 908B886C12;
	Sat, 25 Apr 2020 12:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfAwk1VzHQ5u; Sat, 25 Apr 2020 12:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4428F86B18;
	Sat, 25 Apr 2020 12:39:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0DD81BF3FD
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 12:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDD7185D8E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 12:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0QR1FhyvQax7 for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 12:39:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79FC585D7D
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 12:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587818361;
 bh=m3U4uimyg+MbzfiVunDprrIZ+RQ8+IS/ddgDXvp1lnM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=kKTYEEUf7OTS921DTxH7zvuXAvRaURDhFC8gVtwyxisyj6y9SANqAD7wjWhJNGj3s
 4Y6IqdywBQ2mnHr8qGLQsvLoYsR+RlD8Vu/QvukkNY5d9cfBb+GynpLImCpezTD0Aa
 z533jvesH6fEhiPMo2Im5QfzAdVjeD2ku0Of3CrA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MxlzI-1jGyxz2x4A-00zBSr; Sat, 25 Apr 2020 14:39:21 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] Refactor the vnt_rf_table_download function
Date: Sat, 25 Apr 2020 14:38:41 +0200
Message-Id: <20200425123844.7959-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:KuV9f5orkEU4A9fw1F4ikazpy/lirGkniEyNHdHLkFR6lX1Wk0/
 GC3szca4vaY8Lls7BPPAuWZVsVfVtwI65jrZCvQtLj4UZUXykUpLXITnlky3UPhsLxvfLPi
 QOb+1rQCkWnTNAnzr1FORcBcVnU/022/SL1l4I8QwLGTm6Lx4VHU84URSQ5IHTgZ8acRmX4
 DLrRe3fW8zieG9Rtkhn2A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:EnXu2ekfWr0=:chzhdA1ml4OrwcaGKxV9YQ
 hO4fPHzGtK3okl7u8Zf4DoGabpj4tVGWjZpe3ymu67NUQuMsW9H4ovzW08TjW4YWe0fzNWckw
 Wvr91LTX2l0MNcmzO+eJTLsONLAGC4iJgo8Dy+KJkkDJ64FMI9U96XJLH8Rd8B3V2S+M5JYBx
 EohKFzxwv/riy0boEgln2wckOfMciwrb0956DF+I4yBeAMae1wRk7wQmGgkk1zWcjFYR+EsJJ
 NwJE7bLJRAuX5mm9GPuTgEsSyjNxgTBlIg3oaMKXHvlGbD9JDqIjpCNAX9hiFOIDsBhzY4A/c
 KCRDBilPHfRvCSyM7nS9aZdO9vOTQXytPMpsFqYXiaUp3p0r6dpZPOkG/yMdQHo15UNzBqLxm
 I8NlZYDn8W8qNuNv//Pvp9FC5SLo3A/MdA07TETgmczihFf/sStnXFIcStw8Wda5i2vbI4Ptg
 iQAvouv5CdMycpWXcXD5I+496sIgQHCz8uUqA6I7lpmQa4ahJz3IhXRRkTZK+QdbE2tw4s4Vp
 R3XQmkAWUQiSFxc7ZJ8eFhQl1dlJvMU5E26x9MYJMwbBO8CBoFn8lJGN3PpbZLwWHUxEj5Gde
 agsd/87xwa3zUDK8yeNC4Az8zHn1j/tKKMsp/fE8+AyPLHaVfbQ6+Yz1B3sM/0wGe0wgKoJaR
 LfNiOt8NGvJwla3HuRAtCSOF9u6zfNxe1UqWMUStgp629Rr9iIlIcIn1FcnWzdkjixOEE+yZv
 /UGcmaV00jQcE1f5bX9dIozkn90A0VTOGyjZp0pMbFIBFtr5U3f6nG3UnoZ74yWfaXzvSIDKF
 8dRHOGfnN0TTdR0eNfZ7ZciSN7s+VrFWLeMVUcKXpdpgzAJ7H+cVAWm0UqLq/W/2wnekzPiiz
 zVJO4j3WUszUOfOuiWC+n+jMaeMcmV16QrT8UGxHGlz3J14NntN8iY5R6tub5w8dFyju1Begd
 9IumMEOA2gIkEI9BtI3bWpxAM1Il0a6g2ze8vGjFx9E5cBIno00PNnpUqziALoE3wB9KZSFbV
 fA60UzAv+1jofgt5m00Gjg2ULw1cB2uW4ocpkuspEYhcLnL7JE0rC/dmTsBIYu9uad5oOkJ3j
 1bJ3jd9l6PQSHDbo/kbH0rcpGIFsYV6tt/07CmQ5THoEW1gQJDTeWAKxBtVjypN1ePPvB1Opt
 yq3ezhb/r2Ja6vfGFnLNsBLIj8cX7ShIf8UkIFm1Bdt27PyvhUUagllhewMje/z9nbqG0f18e
 YEMrLpyV1LEvQ8M/c
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 Oscar Carter <oscar.carter@gmx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series refactors the vnt_rf_table_download function through
tree patches.

The first one removes the local variable "array" and all the memcpy
function calls because this copy operation from different arrays to this
variable is unnecessary.

The second patch replaces the "goto" statements with a direct "return ret"
as the jump label only returns the ret variable.

The third patch replaces three while loops with three calls to the
vnt_control_out_blocks function. This way avoid repeat a functionality
that already exists.

Oscar Carter (3):
  staging: vt6656: Remove the local variable "array"
  staging: vt6656: Use return instead of goto
  staging: vt6656: Remove duplicate code in vnt_rf_table_download

 drivers/staging/vt6656/rf.c | 85 +++++++------------------------------
 1 file changed, 16 insertions(+), 69 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
