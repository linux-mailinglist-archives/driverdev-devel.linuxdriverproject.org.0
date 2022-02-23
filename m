Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BB54C1F16
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Feb 2022 23:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FD8160FBA;
	Wed, 23 Feb 2022 22:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZxCvIKWUnDx; Wed, 23 Feb 2022 22:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1767560AB8;
	Wed, 23 Feb 2022 22:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0A8C1BF868
 for <devel@linuxdriverproject.org>; Wed, 23 Feb 2022 22:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF82D60F89
 for <devel@linuxdriverproject.org>; Wed, 23 Feb 2022 22:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EAxkdOiQvLB for <devel@linuxdriverproject.org>;
 Wed, 23 Feb 2022 22:49:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EED460AB8
 for <devel@driverdev.osuosl.org>; Wed, 23 Feb 2022 22:49:26 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2d310db3812so6178187b3.3
 for <devel@driverdev.osuosl.org>; Wed, 23 Feb 2022 14:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=vZCPiL/2APngmCJabOGFihIXsdFb+Vrl5P1cduovTQQ=;
 b=iHALLSyogFVNjf/7pEQhF3VWkTkuQrPamHrSzdVeaMVaxq+wMi6FAdwxcHp7wTQB7T
 +blRoEYIXB876rjsabwee3CbeR+9/t3xNoq4QDVwxBIuDytorUqKZE9JK1mnycM556P7
 7r3SvCsSvLlwyy3CpERNs/WnjsMnil2vV37xjVkki9IXITvJS+RUTcH2KuFcV+8Hc1e1
 oa6IiPCO/TB/mGiG3jTHhr+z1ek4hxnm4mxgZY0oav8LRPRKpn7I3+1mGPp250W7Kr9S
 NYk2RFUbkNk/3OWAQSYd2ARoXoFE0hR90yJxfg/vxXapykBH1pt6sBrq6U2jh71O9KXf
 Rt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=vZCPiL/2APngmCJabOGFihIXsdFb+Vrl5P1cduovTQQ=;
 b=gJwK5IXnVRe1HW6kiZogEjR0e/MFCN5fY60gQ0u8WMp2ysmSosqp6PzlQBzuXZ3Fpb
 U0LuC74IsZeI3QK2ym2mpj0NV8z6HrfLs9im6DswQcSRwUhP99PWcxJ1NDPEhgBCCfPM
 3gnCBLM1/vjieqGJXSzksQi7DCcAK8Yvfd0uaD7scjzmbOYyocjULUFQCl8+O1N5dQvo
 HjNO6O+2cjR0ps/G+j35B7tpjSvHeQ27E7m33CrjrNZ3qyUR8mUtSJ9YUx9IGXIr0EA/
 TY1uHlVkdv8xvnBzL3qBaOQpo/o46LGIEKfYCnTFXiPUGMT9CWeaZrl4KeyLvGdHRPFe
 Pfrg==
X-Gm-Message-State: AOAM533due85pz3cxBlURoHyDGYDHNOdb2TL0qQYNNGKjWFZcQWCWIY7
 EDd9a/x9vWsAHqQPElJxhco3PQuQvU0TfndT0F0=
X-Google-Smtp-Source: ABdhPJyPrcJPw4ZasndUA1NmwqT8++C27AKeTEILgied62tUkNZIps+ovm3kHYPcdiVnkUzOxS5MEUCTVPfYlXgDZzU=
X-Received: by 2002:a81:6344:0:b0:2d5:e25c:3ceb with SMTP id
 x65-20020a816344000000b002d5e25c3cebmr1738789ywb.418.1645656564868; Wed, 23
 Feb 2022 14:49:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:6281:b0:16d:22a3:1f69 with HTTP; Wed, 23 Feb 2022
 14:49:24 -0800 (PST)
From: Hyung Lee <center.vcard3@gmail.com>
Date: Wed, 23 Feb 2022 10:49:24 -1200
Message-ID: <CAPRP13yZQvW83+J9j0GXEFqYBsR40CcNUw2X30XLZDuDj-6RCA@mail.gmail.com>
Subject: AN OFFER FOR LOAN IF YOU ARE INTERESTED
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
Reply-To: info.hyungleeprivate@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/ Ma

I have a client with Assets in excess of $20B.

He is ready to provide up to $2B plus or minus for project funding on loan
basis to any interested Party whose project must not be sited in prohibited
Countries and prohibited businesses. Only willing and able to provide the
facility for anyone on a loan basis.

Interested parties will be provided with the details upon a favorable
response.

Please contact me for further details.

N.B We do not sponsor projects or enter into partnership, we only fund
projects solemnly through loan system operatives. Therefore contact me if
you need loan from us, we are capable of giving you a loan up to $500M for
your project.

With best regards,
Hyung Lee
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
