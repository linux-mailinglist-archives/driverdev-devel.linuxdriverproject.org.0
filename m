Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC8D1973BA
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 07:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEBAF8623E;
	Mon, 30 Mar 2020 05:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhQj-qeN7Qji; Mon, 30 Mar 2020 05:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6C0E85E5C;
	Mon, 30 Mar 2020 05:13:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 958151BF44A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 05:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91B7985FD7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 05:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0R3WeG1yy_dW
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 05:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3046285E5C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 05:13:16 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id u4so17702616qkj.13
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 22:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=OuZr19tlK0LCL/nKe3emolw5buR1zjvwpIrx3lUWAZXm8kkPDTnQBBSq83RmGvV/+9
 Ozye6VmbcjHmslG9RanTEDL/07VmLUoPKI3tkNhK+vAIl1QFUNQdx3zITndDf1hj8nGJ
 ThA2mCuCPXVL+QVD1wNDRSlY8piELRnRn12GnXMvpBSOjH/R/63WArysIz82m3LyWCmm
 JwZ2RQ0yqHya9yutZXHB20GdAf7dUmkI3VtSejX3p0PxT8pLjEs87Oknfgx57g1yNIXQ
 IUbCc8UXYrReBIAaAvc8EewzbesoHlIk2kCD6IeG0nfQlZ3YRgapa9B9MquIqJzfWm37
 XZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=rMU8YoWsNIih1u6Zn6R2BlnpCtncv2qAPWVAOkXdCiIiDV2I+bRFGsJv0PZanZJ2DH
 pScz64msR0zupVEXjIOraBlkMRQ1D7Fqk9yL6+P3R67xDVO/7Vb1e3WZxGh5FNbWk2Le
 tXjIG2TZLarSw4g2QHGh2iPzkgJEA4/0gyRoFimF5rrBk+zkzHBsWxCe70nmxSEYLFmd
 66buSWlVvYm5KekdDp9LG6B0w3EQU/d3r1H0ZDa2fLA/xa442uEHbj92n4KPcLCtkvOL
 WmtQyDuf6JbqdIsQtWPHxmTB+1gxdzZQ0YB9IcKYCDV5lh6tnw/3Y1gBWUma8FN1lAQg
 FZZA==
X-Gm-Message-State: ANhLgQ0X42H18v2kvpz1pv9gP54yDaHNLoz0K86j56PKlyqv0Zfc8rai
 4LPwSh39aCirjKYp+lgjAEiakP4p97AkmNbgYHs=
X-Google-Smtp-Source: ADFU+vtj/DFbxXodFiHfKGTLL0D2ACgeL+nxGGMCiUIE2Xsme+tK9zVQHPpMrntaRAFuqredkyBwQwwG+l9S//mWniA=
X-Received: by 2002:a05:620a:401:: with SMTP id
 1mr9731984qkp.465.1585545195174; 
 Sun, 29 Mar 2020 22:13:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:3181:0:0:0:0:0 with HTTP; Sun, 29 Mar 2020 22:13:14
 -0700 (PDT)
From: "maryalice - maryalice:" <maryalice00.06@gmail.com>
Date: Mon, 30 Mar 2020 03:13:14 -0200
Message-ID: <CAJrXg5TRbPKbqUKS=Gn5kt28YpvsLNQA8ZR+OmVeUj_kaN3ovg@mail.gmail.com>
Subject: Reply For More Details.
To: undisclosed-recipients:;
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
Reply-To: maryalice00.12@postribe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
My dear,

I am Mrs Maryalice Williams, I want to send you donation of two
million seven hundred thousand Dollars ($2.7M) for volunteer projects
in your country due to my ill health that could not permit me. Kindly
reply for more details, and also send me the following details, as per
below, your full Name ..........,  Address...........,
Age...............,  Occupation ...............

Remain blessed,
Mrs. Maryalice Williams.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
