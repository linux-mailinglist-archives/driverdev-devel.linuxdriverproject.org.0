Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1151A5199
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:26:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8322885E7D;
	Sat, 11 Apr 2020 12:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mit9t234yMDv; Sat, 11 Apr 2020 12:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19A1785A80;
	Sat, 11 Apr 2020 12:26:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB0E11BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9AF0620346
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJexKMQ6Re-z for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 16F562014B
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586607993;
 bh=4hHsNUVkQV9v7/8ao41kNuAADHTJ68ks2yQHMevy140=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=EBUFnCrO777CJjhKR7nhiQO37mFan3iWgtTj94GkRy+SyBAdxe/igKiEHwECG9fOb
 iIqZoER/KD9W+x8ctgr75pi/X9DKiOfk4bYw2CIGVcuzsf4O/fL+UNHGOGz7BDbTb9
 M0G3PDdngDN2CGPDK8d+X4sYN96xDrWXWxzrKba4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1Mf078-1imFV52Gh0-00gY0w; Sat, 11 Apr 2020 14:26:33 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] staging: vt6656: Refactor the vnt_get_phy_field
 function
Date: Sat, 11 Apr 2020 14:26:08 +0200
Message-Id: <20200411122610.7901-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:c0cUxYG3a8+61l/gjTsW94CeUH6i5ypd4hksGc9lSoZz7Kc7JJ3
 1G6GzCMT5OQbfiXBE42vit41rsFKswJ9Xjxryf1ao61HRyopIzQvzkqztyGMcU8Xv8IQC9f
 H8kNroG1gxGx3gkHDVNDL+hSy0CbeG4qgkzC/uOH+zve2RYZosuyc6DH9f0xntEa735vrgl
 hwQuEMD1UCWgFiF3yNGOQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:RJ48s7JR1nM=:8eriPuTNs/aGxAPNWenNMX
 LCSw8JrIPp1QsUcL9dz2eL9NDtMAuKE611J3xZrC2NEDjKSuX2TBjZNr83mUZd5XsZupZjlHM
 wWKk2htD32CWV6hKKjNg10LcuZ3syDY7yqLsPszaIYUT8Nf77jYKCwQHYp0vcvzx6gam55kV0
 V3Cn3EK1v1TftdxybITVkHeAzBxEJNu6OHCZSmB6byIt9EARsGnruffPRkw9RU70sCruMrTzj
 g9DhVdmXra/YwekgU8YIKVJtjwc6UFlTvPB0PHHIsy2JwgiaapVubsCXce3G0eIbGlFfkqNm8
 CAWjiqjSNE23WnLzum+SJfwMS+29FdbPgIwEyoSZzlTwMH2sTcsrNDF83q6Cxb7DdJe6YlYFB
 aMAcQhVShgMqv27KyTe4+zIDf3e/ZHz6NB0VfHNYoCpqZw5wHBsyrsR7RUCmARULMakYeiHN0
 83e/cmLT0+3UkLMzZe08no/aTx49Cjn397qd3TIacOFBTj0Bhv3dj4a6mSL3cob3Rq/7XMINM
 e6MSgpW9J8aUgY8jJXHyZ66MzuYlbYPVlTfjhynikObdVhVCaqVxeDlaBUMWsKKJpwQfhkL/q
 qQhJ40im8TeLQrypEPV+dpAxs8Uccjs+ZOU4jVoz6LdYJ/A4C/7bmg4QdfHAQOEklh9GTFtMA
 CK5p91U1NCiM1n8Nn56BTn18FxrLnui+3ceOcSWSQuqYQiUqSQsarL9X4CDUvt02jStRQJfOf
 ebX1dbeIZTn24PV8jgGgyuOBKDEwj0udq9B9JpGQpcp/qHxcL9qVyotHJIyoRz126LMW6zrYQ
 bzs0tD6Cr9rBqsAK/L813/S/2CyCUv8Bc0McowYqhu5cBYHJChJ3AW0lbMwq1O2rZx2ZNXYcu
 TP0VFkhNhjRW3vOjmSSb2kvUOmFKtcx7AHwiD7Yq3khIEz7PlKg7Mpr8+Jy4y5utGOiD2tddk
 ltwrMxreyxoGGc0J2hMw1LD4vG7vWVZr0zeNKucYnWThT9wvCsF1CS6FhVO5mOA77P5UzdMM7
 Y9BLmymfGL8178miHtPjBXiIG8pzF3AjWrq6U7wwQ1M6RbXikjr3PBeKoKXXCsMtLiJXc0hy2
 8td+1SRlKE2rzCf+UKq+ONz0B26PZChgt4BQTxiYWMIUCC49pS3sHXvFvco2t1oE8qa5Q7fff
 6cHQZ2MtXuSCbxaNqpJqPG0aqGbDibqMOCCJPN/JUjyT85lme4zm4BpuRi+PlxlwlUOM7FPEP
 K336fSA4dYjlO2HGU
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a refactor of the vnt_get_phy_field function
through two patches.

The first one refactors the assignment of the "phy->signal" variable
using a constant array with the correct values for every rate.

The second patch removes duplicate code for the assignment of the
"phy->service" variable by putting it outside the if-else statement due
to it's the same for the two branches.

Changelog v1 -> v2:
- Remove one dimension from the constant array for the "phy->signal"
  values and use an OR mask instead of the second array dimension as
  Malcolm Priestley has suggested.

Oscar Carter (2):
  staging: vt6656: Refactor the assignment of the phy->signal variable
  staging: vt6656: Remove duplicate code for the phy->service assignment

 drivers/staging/vt6656/baseband.c | 108 ++++++++----------------------
 1 file changed, 27 insertions(+), 81 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
