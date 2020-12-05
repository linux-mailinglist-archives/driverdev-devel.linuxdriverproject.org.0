Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EC72CFFB6
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 00:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EBA7874AF;
	Sat,  5 Dec 2020 23:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2UGCNlTjLH9o; Sat,  5 Dec 2020 23:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A408886109;
	Sat,  5 Dec 2020 23:21:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772741BF361
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7144986109
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tve_89FO-8U2 for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 23:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F141A860FF
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 23:21:17 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id t8so9660169iov.8
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 15:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=4t6TYZrxhTxH/eFGEgRXXjU9rfFDcdKUYbPzwqTnqSo=;
 b=UB6pWf0JWljtkpi7sxV7b9ENsbgDkVunQWhJSw/UhAaVQh/+1Dm0d0tB9C2Eu7/+tr
 FHvQL8QlMq/9/wk49pnC3/z+Dk5nmxl1q7i10/+hC7jZFPtJMcnOQiNdeYjQMufqMVqN
 3s+uscmFeZmLi49WmABPJ7A+bnfSK73qd5BMNq6WbeZEO5N30b71JarL2yMqU+OKXLSc
 FN8/PpInPfq3mH6WyeDyzHC9mrqf1k2owssOLsU00a/N6UMG2WmLToiQDv85YyERA3Qv
 0nTdLsSFa5caFD8Qidf9aH5CjzrpS4lZq1wsVuFuDL66X9DB9s6rFA6gFayFpen5OD4b
 Qihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=4t6TYZrxhTxH/eFGEgRXXjU9rfFDcdKUYbPzwqTnqSo=;
 b=t2SISOpzfqQFTEQOsAQ+kaAW+X94WaWyS2jAdQyHiZUpTxNFOY8LGfUOvnQtkxKS0j
 6slqvHrd4WNrYL3UsYuXRzyL4jtNlJC7U8BaqmHg+yv4xPjLMx7LwcDkr5JLQPtkiFKg
 TfxMe/og4NzpCpfD8ryAH/24OovYwYgvOszOiCzxVPHWF8o3zDr2JdTLinXdklExg7hv
 13+JRQZ6DUTWkT6z8ZwYYdz5TtTMkxIFAhTpmpTt5+d/XR9MKnorG6P/oxInzT5NPxCt
 JuJz/4zmj5iRCp72gKqLBcH0BdLmx5R/5rlLX9M0CoLeh9a3Qo/qvvCME1LvFLoRDi30
 sDFg==
X-Gm-Message-State: AOAM533U9sYSJd2M6jHB+nXg4erAFQ1TKlDuxR1VZKo8ebKqViby0aJC
 2uIUkaX1jSPk+yvzQqqBJFU=
X-Google-Smtp-Source: ABdhPJwUiVnxhhSME/zowh6lZX5WcjbWfTMfbF1/2oN6Tfn9LB1Ks0I5qUwfs3/kuS+OUnTwlfexuQ==
X-Received: by 2002:a02:7650:: with SMTP id z77mr12657868jab.134.1607210477251; 
 Sat, 05 Dec 2020 15:21:17 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id f2sm3482131iow.4.2020.12.05.15.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 15:21:16 -0800 (PST)
Date: Sat, 5 Dec 2020 17:21:14 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, ross.schm.dev@gmail.com, vkor@vkten.in,
 dan.carpenter@oracle.com, pterjan@google.com, marjargal16@gmail.com
Subject: [PATCH 0/2] Fix coding style issues
Message-ID: <cover.1607209336.git.matthew.v.deangelis@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

this series fixes two separate coding style issues.

1. Delete an empty if statement.

2. Fix remaining unnecessary brace coding style issues.

Brother Matthew De Angelis (2):
  Staging: rtl8723bs/core: delete empty if statement
  Staging: rtl8723bs/core: fix brace coding style issue

 drivers/staging/rtl8723bs/core/rtw_recv.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
