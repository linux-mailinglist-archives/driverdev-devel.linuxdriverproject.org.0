Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D54203F01F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Aug 2021 12:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDDD160BA3;
	Wed, 18 Aug 2021 10:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SgxAo-n4fISh; Wed, 18 Aug 2021 10:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2200C60762;
	Wed, 18 Aug 2021 10:46:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7629E1BF577
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 10:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7064F80D40
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 10:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jAGpJJCPOZqb
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 10:46:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D475380CA0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 10:46:20 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id bo19so2414087edb.9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 03:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Fivgg2AeCRNBcGenGR5PhhzfdPPnwT4Sdv1YBt6Vnqk=;
 b=urPsh2o6lN52AwCredwYCrdAEvZM1G7zwnI/2CAqiTi1378pb339MLkpfYPwXT14O9
 yZ9RfEnLptAm7E6xsVt8osb6MupV4IeyhL3dLp8ZZPc1aXxL5aqFFoBS/aRI9IL/wL86
 NDpTQWZv6JA6RX8YujX8qltSJPUVmwxx/smzkZ9kzvmWsaDhsKui4x7k/K36Nr177Ela
 oNtmztNl6jaBl/LnA369kMX85dsbva7FJacFjAzJ08v1c5O3x1MYHTdwetKYEdkNdF1e
 qPfBaUUUF7iV7YbqunZCb6J3cpweI147/+D0v0I1VpzDriRNZHOEny6FCaYxqE3DqeQ2
 xQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Fivgg2AeCRNBcGenGR5PhhzfdPPnwT4Sdv1YBt6Vnqk=;
 b=c3852N7Iy6QN2U9blvH0hcNR3uEnke1+3/SN0sx79UWv/4qX7tNAac7iUxCy/XhAXz
 VDlSKS5QH2WxhXtDdqlOuQbrEgL+Apnd2F6lemCpJg70rOe+5q69ted4kBphJQwQdAJt
 eW3WWh8I9lIxl6XCJ0+lohgbyIcCj859Lx3hMq3ox35fGmJWcrXqKx/IJ3MkztHMQTts
 ZKzcbbFNoCSeRAgZUmgby3NUZmf+Ehi1e1xxBFYZjYThSolBszOk+KTHpGiDk+M9WCmA
 pnSDLgMVPqa6QeymDOPtZES/Ld8ETPFiPecthj2uQwyrgB0GEqi/EWxzGSFpdKl8RbWp
 anug==
X-Gm-Message-State: AOAM5324L9QNa8vjtvlxbCB92DDT2QCgJpBsZQqqREyq6hX11Cfkz5CO
 i+9CtNeGwDyQ3hALfk2h426aobnnt33LvrhDXKY=
X-Google-Smtp-Source: ABdhPJwFBO035PZ8EomZ0Rg+qIhcv9oIOm/m2roQF857ITahjeapoobD0O9vNyaFjik1nNTnqj3pjUXc/PLVvLuWlkw=
X-Received: by 2002:a05:6402:3483:: with SMTP id
 v3mr9448396edc.207.1629283579119; 
 Wed, 18 Aug 2021 03:46:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2581:0:0:0:0:0 with HTTP; Wed, 18 Aug 2021 03:46:18
 -0700 (PDT)
From: George Micheal <elderemmanueladu@gmail.com>
Date: Wed, 18 Aug 2021 11:46:18 +0100
Message-ID: <CABSZou+Q_1yDg1p+5yWELf=_CT7h68ZKMT-YmuWagomY7toBuw@mail.gmail.com>
Subject: Waiting for response
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
Reply-To: geomic123@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/Madam

My name is Mr George Michael,i am the Personal Aid to former
President Baba Yahya Abdul-Aziz Jemus Jammeh of the Republic of Gambia
in west Africa, who is currently in exile with his farmily. I have
been trying on how to get in touch with you over an important issue
concerning a project that will be profitable. I anticipate hearing
from you for more details.

Yours faithfully
Mr George Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
