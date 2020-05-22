Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BAE1DDC4E
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 02:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA67B2322B;
	Fri, 22 May 2020 00:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwSx4Q9gxIbx; Fri, 22 May 2020 00:48:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B18BA24BEA;
	Fri, 22 May 2020 00:48:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDB761BF9BF
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 00:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0060886B6
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 00:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXxh1PVXtRQj for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 00:48:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC3D3886B5
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 00:48:00 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id f189so9228020qkd.5
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 17:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=q0KELg4sE/p5GNb7xhNjsi6VkQMQZCxb3Aez4XnXkAhcW22u9eoLdBhLTmgMUkusu6
 zR2cBbzvcz62Gz9tbYFocv14Rf4W0HnTERMJkewmnWivqySG7k9Y3IvFcAisDslBH5Z1
 z6bx2q61LtIJemU3pM72UGd3wqFcdQZCRB0l9yFM3SRniFFDCNLTXiuAyYKFPn7swAP/
 7WCkb6XWsyK8ggoVT9/Tuf+Hk0u+cT9giEmXPO6YA6SRPlGKkdmtB81NNe/FaZM5vFvy
 R0WWbPjx3UAp5E6+D7OmtI78FF95YFraU7t5oQnJ4z48kZPtQbfR/21wFf4NNM9xDwqF
 oxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F3NMDrR9dummcUXdRfruEEfbIS6yB2vx68nB8Asq/5Q=;
 b=ua5GzXaG3AJUErHpTuK8WBlI+5zGHGti2DxyTNEn4HGTE3N+5dDfxpGpPe4GXZZTgS
 DRxl4RQqqyirl7am2pvCZXZfp4yWT7fIpMYis4uoCe+RaqlFEeFUKIvB/RMHSrU60XFp
 IoYhE1PQEOFpwuxxIXiRiXhrk0hKxhlP/P6mUOnnDNecrt7vIOwKuSeQ/Hb8REY/Ihdt
 oCwMxmtgHU9n4zeghiHCeZSjJs+hA8raBozSfgWhE0qgI5ZTI3hJ09qr0q66loNA4pII
 Vdn0tgwDvkFVS/H1i9sF09IDUZYyyTE3nMRyiD89sTx72EG8J7iFwwVCvNih+0uIIsKz
 QQ7A==
X-Gm-Message-State: AOAM533r2dDQUuTbIFoXU52xXQZ3A9P5pmnP5TLkFo707I8h9f+vRiXG
 hXdX4pJj4Iry5U7wl8cyOUndW8yJCdslc8nHgkY=
X-Google-Smtp-Source: ABdhPJykQENIZ4f70NaPJzJT63PBB2pG/Hqt3vP6fQMcOQlTOzGzTIccBUXzvLMC2Y8v3fJrYraoOi43PUSzQNhLU68=
X-Received: by 2002:a37:4f55:: with SMTP id d82mr11992588qkb.219.1590108479815; 
 Thu, 21 May 2020 17:47:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a37:9f90:0:0:0:0:0 with HTTP; Thu, 21 May 2020 17:47:58
 -0700 (PDT)
From: mrs chantal <mrs.chantalas1@gmail.com>
Date: Fri, 22 May 2020 00:47:58 +0000
Message-ID: <CAMdkyyAyyJeAbtsuThK+pHCiW8=od3fCFspj6tBJM10UCsczyQ@mail.gmail.com>
Subject: po.Compliment
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
Reply-To: mrs.chantala2055@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

     Compliment of the day to you. I am Mrs.CHANTAL I am sending this brief
    letter to solicit your partnership to transfer $13.5 Million US
    Dollars.I shall send you more information and procedures when I receive
    positive response From you. Please send me a message in My private
    email address is ( mrschantal066@gmail.com  )
    Best Regards
    MrS.Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
