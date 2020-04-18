Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 132921AEC72
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 14:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 080D0877F4;
	Sat, 18 Apr 2020 12:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9ysUiRrAnVb; Sat, 18 Apr 2020 12:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C298685335;
	Sat, 18 Apr 2020 12:37:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3CE11BF5AD
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0A42859BD
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7pwAsa+X4xGa for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 12:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B56585335
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 12:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587213447;
 bh=0i/Wz1llh1JOZqgylVTquYfWudmh4cFW62cFUXvwLDE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=FVVsQjWiDxrPBsm0UJtstJ6Jm/1Or6n8OFy+Ot6NJXK5L39oHoIXxLBcqu8RXkmt2
 ciiAACTBhPpzKv41DByK8gP4opXDBm52JXZFJuYgzB4knLlpyVNfmDcU1oMupMZK1T
 koWQaIqMHKowJOCwoNCM5OSFJSR269Zm9aVahTfg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MGyxN-1jTrTI09jf-00E6CB; Sat, 18 Apr 2020 14:37:27 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Date: Sat, 18 Apr 2020 14:36:57 +0200
Message-Id: <20200418123659.4475-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:oHlXilqcAogjPYcNvsKaQo1op9W4zPB+NOtoYbdz9XTTX7lvo0Z
 aBEh9Dtgohr+QMLgRhMGkUfUPRwa++UUtvVdt+BDi6IvD6gZ+kf4jPJNMWT0Zlfe6plQ8ty
 NCtV35xEEmj9Hx4QVpQl6CwsjB897/GgXbAs4akASpRCVQviZF5M/i3T1OlftMOQv1KxeH3
 LzUV+rGtkSougqSnCZOhA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aJaPwoWp/lk=:hM8LfiBBdcnb0n6aCBj9Ur
 15vcMOUG7JRgSp8JroL4CO/dThgU+80pU183sFVz6maYQei5r1Ail4y3Qf46cSAO3PHxp2Mzn
 P2DSFqZPqAxAgZEAN7dt+aWpEuulh78eGuW56VbKtC+7WH1SAftvERxmRDqQYENlYLc4l10MZ
 r6qW8aUnLKdPJnvYHP/LEfrL6inROjslHlxkb/UvV5/vKb5Sii1/X5f4otj18mEXmC+Wp5Dl9
 q7wJDgkG+5t4cabZ+pLcQRsy4CpK1M4DrkPFNyO6YdFhVBeYV0LuG7ZKwYs9OFQEzl8TIQGyv
 ksIJfRJpSVpw/1fQmjLVvhjzAYBbr5Wx7EA4AdqhCDqn0rWhFZcPyS3THPBWj566UZqmiIUeO
 ktB4/vNUf8u5/eYjyi8N0Tgn0nKXqpdr/xQZiG7CiLjW7Oxz/kuemeLyW9ID9wdO8eWx5ijRy
 Cvr0DV7ykJ4DUUDdiylxNx1gTuM3vbNHVGHO61/7Az5MEb9VDpaRgU0naZg/aSMd/C1pmRlCX
 WzpjG3t5JQFDyTeuxlZaAD7nC2HvE+3hRYWYsx/BMYzZ3QG4gbdH8ey97VhKKKJcVrpy3gq5Z
 wBGgzoHwcU+qCfPg/6sjTBWb2zUqtbTv8HqPaPwRU/dHWlNgPW/SCa3aEay40xszP0RI31eRE
 RqHC4bh2nMlQXDHms83yeZJLZqcoggfsjiT24onQlsAkSirqSlKo3UGr+D2ANCs/B38wldCo0
 5jsuDs6sdxzB+Dvw0fI5sy7ItKnbwiFebsh0khRO9f9WinviF8GZWmKBwBZi/ynHRzlYUZ2CZ
 PE3UOdCIQwsZCSuwN/PtTt+SU4mwjbXoXcKmgTj2QScOTT/5dxEWUBDXcqhyKQwp9vEpYYJci
 w1ULHfAPB28Ri+lYjGjlbHsm7BUv0XDDAKxnq0vPLGoYnbJp6Pw5NGzhAAM7v2ysqyO1ZHek0
 cuy7Qvoze8J72qxXh6owh92PVvIMULTwGsrsqXCneH/FFyFWZg7rFNkQTcfKtqJry892mXqsI
 1lN4B3uZy35oyhq7B7E4skpmLSZttZhKjuzpUUIQvL/hYL5WVhM/2rFg4/BYzhWdt+FepPHgX
 v9YUMCykLZDEcqGnxTnG8gbDcJ5eO7s4V+5IN427o3jB2I+6IBUbYzF2M2vJM9wHHy4PSdfz6
 esuYDAERlSGBKVksy8l6YoOAjL30bg4sAhBrsnhu5a5iwRRx9HYwL0gO1AKI5tRmLgnnYcYsc
 2A+SBiyafrSt0QkAF
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series checks the return value of vnt_control_out_* function
calls.

The first patch checks the return value and when necessary modify the
function prototype to be able to return the new checked error code.

The second patch replaces the documentation of functions that their
prototype has changed by the kernel-doc style, fixing the parameters and
return value.

Oscar Carter (2):
  staging: vt6656: Check the return value of vnt_control_out_* calls
  staging: vt6656: Fix functions' documentation

 drivers/staging/vt6656/baseband.c |  35 +++---
 drivers/staging/vt6656/baseband.h |   4 +-
 drivers/staging/vt6656/card.c     | 198 +++++++++++++++---------------
 drivers/staging/vt6656/card.h     |  18 +--
 drivers/staging/vt6656/mac.c      | 143 ++++++++++-----------
 drivers/staging/vt6656/mac.h      |  26 ++--
 drivers/staging/vt6656/power.c    |  24 ++--
 drivers/staging/vt6656/power.h    |   2 +-
 8 files changed, 217 insertions(+), 233 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
