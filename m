Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D1DE749E
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:13:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 62D2385F5D;
	Mon, 28 Oct 2019 15:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Skk1rhKFf9YE; Mon, 28 Oct 2019 15:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3580585ECB;
	Mon, 28 Oct 2019 15:13:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31E641BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27ACE85ECB
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uEjoDHonv9ya for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E82285D00
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:12:57 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id z17so8413592qts.9
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Rj/mLsST/N2k9IF2aWftGlir972zQLwYBEZ8L6s+jBw=;
 b=djJHw5Zorjm802K3vKcF1InAi67JmjRlPUHVD9hYRwO7h9q/nv5/d7AQAzNzO+0D+9
 vmvMgh2Nv1rP1nooWYv2dxFyTogwXdA6/zHiVgVDWZtRuq5k1VUG+fxDm63mXrvRue/s
 smqNeNozUi2he4kDToeOIJRmXH+ujjk+hEuyFf0f9YN5jopLFz5nmS4Z0KDtGWbhq2rV
 6pgz190FPmtTAxgAX/77Z7DrUy6WLpXEbeOF4uoGd7vn0sg3KMBwwnQkUZ0DcKiKor1P
 xemNWU+yvI2UlKpKVmmWkRt4bPXAKIYKsUNpCgTTI61vwiv1c9tKoYZBRvZiLMCLKOHe
 0F7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Rj/mLsST/N2k9IF2aWftGlir972zQLwYBEZ8L6s+jBw=;
 b=Zddw2JOF+xDmL3tUY1xF/beXjbmnMftUSmPtxoEAUvupdgdi8Aa7ClqOupK4ew08tL
 0QoJdnLqFWBW51+fOMHmDpbZo7y1B94EjtmjdDOrGO4gHq3ydtPBSIfeA+dTXvGwHNI1
 bEIddjdgAnE9PcLuZ74Szltfng3q9Oo0/mV3tGPoSMrrA5pQUYIaAt4zK5H71tgl8IPb
 k5I7npfT2OOLDcwdeJJTEnuX5T8JETQzn9haz3H/qhQyN2wn6Tp1/oebizTXdPDrX5nv
 rQUKyHwumlXX7qRm3NPi18rhf02SH4EiY/P3LWNK228NaZMaEQBdyAqQ2OfYBZ5LTzxi
 T9RQ==
X-Gm-Message-State: APjAAAW644ecGhdqRUwE8X5qE0i7gPrOIVBZWxKLf7ZCqjFs8y2AHlc6
 UUrFM8PZZE8EDr3E65WXKyo=
X-Google-Smtp-Source: APXvYqw0sFYMyUCcowoJNcFQcDPt5wU2NEuGQL2TVbB9BmHxILzhKeKegCSoeiA7g1FL9jz0k4Z/wA==
X-Received: by 2002:ac8:7410:: with SMTP id p16mr18315726qtq.62.1572275576385; 
 Mon, 28 Oct 2019 08:12:56 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id u23sm3608098qtq.88.2019.10.28.08.12.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 08:12:55 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:12:51 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Cleanup in rtl8712
Message-ID: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup in rtl8712

Changes in v2:
 - Arranging conflict between author name and signed-off-by.
 - Remove unnecessary parentheses.
 - Change the driver name to rtl8712

Changes in v3:
 - Change alignment of eth_type
 - Change alignment of SN_EQUAL
 - Remove commit of unneeded parentheses.

Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 38 ++++++++++++++++------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
