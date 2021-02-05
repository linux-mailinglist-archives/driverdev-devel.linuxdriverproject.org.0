Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38806311487
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 23:09:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D2F687385;
	Fri,  5 Feb 2021 22:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kzu139U8pSgI; Fri,  5 Feb 2021 22:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21E6E86D78;
	Fri,  5 Feb 2021 22:09:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 547CE1BF576
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48CF92E12B
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QbXLvXlNigc for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 22:09:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8049520357
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:09:11 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id y199so7111423oia.4
 for <devel@linuxdriverproject.org>; Fri, 05 Feb 2021 14:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=IE5RykT5wjt4jhSO+Z/B8Mk6ViF3QiE4nbFkPNYjttA=;
 b=lRndl+ch7B+AZjwU8wJwz4FYfau5nfWhzQSZ6ILH1VqaR12e0OTNPRRqHrbkTjFmAQ
 AjQYegOXmqRzG47NpO8bm+wL7Te+i3znZ1QYy5h+MPJ5Ztx6BkDeYOJ0+UlMok5UNS+q
 i71AUH+Q08dhBkGByKfskyX/GXfkOyZli6J0dzOX33LeDcNFTRtXV0bmlzvCdzbWA3iN
 BVPvb7usBhhxlYtbo6C9S5xQ6+JXrnvh898tvNYDjKkPTo7Kb+6Qh/+LyQXAaFELSb+Y
 4Ie+eMqFR7SCzna3aVq1Erng964OzSQRZ0qAVZ7+x/wzgAQyjpJaKk0fAJPkxihfSOnK
 CPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=IE5RykT5wjt4jhSO+Z/B8Mk6ViF3QiE4nbFkPNYjttA=;
 b=cfmr/3nxaZvm7QJSfhj3awDh55d2LRkXe77oQ7FC5NOvwGKN7LZhgW+TR+mvRpQbQE
 aAIqLCh2qOBJGp91DRM5WphkMGo/vOQscD6HIzKoICqERxTBo84X3fY/prdkfF2XwDI5
 n/KFUKxGaNhtMyf8wF2xcQ4B8Dnjwd0gvRfQRIom6GuZdr53oDFvan2TAGT1bA8i7yCM
 6cKJDdYadcm3HMHd/5cGQek8ZkgbMYrbzchYI2ysvLTPqT+WBfqqTHcv2ZkBfV+FUXtw
 jvNnvODV4esiDg3+ML0/0uloEdTG0yz4YFpkyRZvRd+CNPl5yi4LXjmV7X2A/blp6QVl
 gAWw==
X-Gm-Message-State: AOAM5304ESWHyW/2ZG1O4d3QWfaVA3Gv0vTJUt83vQF1mOhFo+GyzFno
 V0m++G3cfGTzSW8TNCT7Ku4p6Ir03KcHvjXd5Ms=
X-Google-Smtp-Source: ABdhPJy509dUpP20X3C9FI0eoYdFFeUy2ispgX28h3FHn4PgU7hjM9+iHETFYRcEdnQCTbhdxStmVBayrlVzzcYA9Y8=
X-Received: by 2002:aca:530f:: with SMTP id h15mr4269055oib.5.1612562950634;
 Fri, 05 Feb 2021 14:09:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:5a0d:0:0:0:0:0 with HTTP;
 Fri, 5 Feb 2021 14:09:10 -0800 (PST)
From: Hamidou Franck Ali <mckenzieclara48@gmail.com>
Date: Fri, 5 Feb 2021 14:09:10 -0800
Message-ID: <CAKkbHUW-A2Pr-0Tm3iCF=LfYW3-Kv31-hq4r_bfmtVyhBd=szQ@mail.gmail.com>
Subject: Proposal
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
Reply-To: hamidoufranck24@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

With much sincerity of heart, I write to inform you about a business
proposal I have which I would like to handle with you. $35 million USD
is involved. Be rest assured that everything is legal and risk free as
I have concluded all the arrangements and the legal papers that will
back the transaction up. Kindly indicate your interest so as to enable
me give you more details of the proposal.

Waiting for your urgent response.

Yours faithfully,

Mr. Franck Hamidou.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
