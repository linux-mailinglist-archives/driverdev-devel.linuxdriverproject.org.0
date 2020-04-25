Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A61B86D1
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 15:43:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85F9C8582C;
	Sat, 25 Apr 2020 13:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGBoZbpyk7nE; Sat, 25 Apr 2020 13:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3916C85B95;
	Sat, 25 Apr 2020 13:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A7571BF30E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 412D685ADF
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IscXO-DnnDzl for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 13:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B06548582C
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 13:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587822209;
 bh=F4k0zl5YuytqaKhKKfGkEmxzH9EdfgCDn9zR9dDO458=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=bclzM9w1gJP6B6o4fvnI3JEAspz32bIy9G0tcjl7KtVhcNa2SpIVHhomSueRL9YtZ
 WQJ+vyr2Vn+kUwZaUG71Sfo0ga1upxC2evbyZhID2yilrBNEe6ntbXkIXEBSNFo3Sq
 UHmJLm1qNhTVc/V+HnPwcTNstlPnjg6VWmINKvS0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MAfYm-1jLhGK3u1Y-00B4DQ; Sat, 25 Apr 2020 15:43:29 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Date: Sat, 25 Apr 2020 15:42:55 +0200
Message-Id: <20200425134257.4502-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:URSGQf31W8t2vC+124LfT2jdGxXZpkjVu6xG6qwbv5Fi33rUSWg
 /hBqk0OJlQAOKtGtLx0KxEBGNVrP1J6+cNS/tLcI0uYIPq4M4xHfs6R4E91o7oPaC1JN+FZ
 Eq6Ut6Ql4cMSQ2ISp9kp2St73LPvNeBLwynI6fGW8BP5C1mPgG05GTvg+JuZAGDaOv7aRUc
 DV46e8lOp2iaMBWqKj9Xg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:UHGDVHN0vVI=:18fo+ciUKitQTMJ2rnE180
 cabaSCZnPV2GG958sZ97+pORsUqLEgLSuAAlwjjTrkmMYWJTkOgEJDkKjW+IBqJsZIbuSS/xE
 Z5RLjujy7DnCg7jBxrFn/TIuhRVb9ytRaB/6t7AYzvOjFmBKj9aC330xfM0er8bMJ9xe0Y9QC
 QjOtaxzdbreSk1w38zcA7UzEu+v/5ldqgk7SLvyZ1wt05f7CkmyB+GzzcBFo7QTh20of7WD/J
 3kg6dwr6i/dP5FIENFx8iGtPUquCfPTi5YutzZT2bl8MYGJexCdunuTblkpzWF8Pbp4I3GniR
 nB7q+cwc2nNDLztcSmS3jM+IyyFi6XwLI87GzHr6asdnf9xtArvNkJvf6kaSIAaidiwMTrDdp
 REHNN74roULwOoKGVUDKgSff70NsWQSk7L+n117n6bYPEQYDRf/pA4BTaUV9dg1wzzOzmoTQW
 fy9V81Tm7fr4kyWPs48MYzCy6ZT4eBY1h5/OMZwNqz12uKBJFjJ9MBTUqGAxoXPqZtHehGUeb
 whBKUL4rLnkfNQjBNh+2s8TfXW2UAAS8vrqSwFT4urAgplSXswbq+ObZYIxslEfsR8fDCuZ/A
 QwKPjUJNmo/IoqysGau3A80iRxh9nIwewIu9QSqt4EjSfCVdo+t4SMRKSXKiEo1/gL7JFw+mv
 DqOyf7dv/pH+ga+2RQ590MOAreLIaHdYIinmtBrAn5dEIZnLq+wOCqPTBm5by883xOHay0PP2
 zH7MAQP3tGH0EHI/m1IxmmlagyTHz8GAshFTwnML71ZXZUlCfSBTyqk458KmMMzt1DSi5VVCY
 V70jcp2ID2jBiaZTgZAfnhaPuZbZjvN03r6FZnWDjoPMcd2+N+v1F7UwJQUbhVyhXkdijPk6G
 33GmaDtiiLRM8kcIoQ9rU7J4cw3MOvo8N1/wpA2znhGXgcyiLMAOI6nsYRAIyr6ZfAbbGDTqU
 fHa1amX7XlfYYQrQhZYHH6GZ/EAIyn47enJTtkvakJTUkkVnk/JFqMfCkNQ5BMcMbbS3S050z
 KiJmxCQc6VpbZrGtXY345bYzh9Gr88Quu+N4bFA23GphWXC6Z0sduKgwKDHSmm9xPiEKcTGSo
 uAPZhO7pcXq5DTOZJMX152PX0mUyfc3M6+czjHXlbHuBJu+79rbeKycv57bp7UFFa7RNUqPAl
 lehABpW0CuqgcF1ARG+cbpfidAAN8uZBZWDV907BYZEdDnwPswbYMSKtyLT7IoD/VDb4T8r/m
 vbgcZWMB/IGA0pprE
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

The second patch removes the documentation of functions that their
prototype has changed as the function names are clear enought. Also,
the actual documentation is not correct in all cases.

Changelog v1 -> v2
- Remove the function's documentation instead of fix them as suggested
  Malcolm Priestley.

Changelog v2 -> v3
- Rebase against the staging-next branch of Greg's staging tree.

Changelog v3 -> v4
- Rebase again.

Oscar Carter (2):
  staging: vt6656: Check the return value of vnt_control_out_* calls
  staging: vt6656: Remove functions' documentation

 drivers/staging/vt6656/baseband.c |  35 +++---
 drivers/staging/vt6656/baseband.h |   4 +-
 drivers/staging/vt6656/card.c     | 176 +++++++++++-------------------
 drivers/staging/vt6656/card.h     |  18 +--
 drivers/staging/vt6656/mac.c      | 128 +++++++---------------
 drivers/staging/vt6656/mac.h      |  26 ++---
 drivers/staging/vt6656/power.c    |  22 ++--
 drivers/staging/vt6656/power.h    |   2 +-
 8 files changed, 156 insertions(+), 255 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
