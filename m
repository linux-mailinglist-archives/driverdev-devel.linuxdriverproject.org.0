Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BFD6D1E12
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Mar 2023 12:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAC4F4224F;
	Fri, 31 Mar 2023 10:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAC4F4224F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d67wz1rI6xzd; Fri, 31 Mar 2023 10:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9018A4224E;
	Fri, 31 Mar 2023 10:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9018A4224E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE9411BF82C
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 10:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AD56616D7
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 10:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AD56616D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7LkCQOltgpf for <devel@linuxdriverproject.org>;
 Fri, 31 Mar 2023 10:32:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8E4060ACC
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8E4060ACC
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 10:32:40 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id p15so26809208ybl.9
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 03:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680258760;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FkI2MmqGF5oIUSFRmETEokwPY40pnpPnttUx4Cx3Heo=;
 b=TKy2TagpW/vo5yHVj6jZ9pe05a92F5ezGCrMkopzP2zgy2URhb71xvnynp6hZsi97R
 ciYpSxUQJtRx2TiqHQ6SlnkRxlytyMAc8dHy7xs4RlOb+IMoazRyzD1x4oyQL/5Yx4sb
 Fp0kzVs0G/olbx3v13jMDRKx98XbfXEwKB067tbTzkVqLIm1Gw9aCnZYzmPW8Gi5oJge
 5nZrYc14HVr2qQWFY65ypN77vMKXDzq501HPcrzVJ1mOqc3exGsrTh6vUjLsBdX6XmLH
 n/KXdUDZWoQOXHLXFndML1PnH63yuIW77Q+LlcYDDlxrizENCBlIVYEnhTt408I0fIUW
 ovug==
X-Gm-Message-State: AAQBX9dv5TPGN0NRsGj1ghY0BeFr6eNs+7dAzGH0HnP1HeW0rvqlBI36
 wm4kZ+NGuQAvBSOvlCLcK6onQ3vGH0NcV1yKsgvTwdnXzH1W/aEF
X-Google-Smtp-Source: AKy350Z761f7XtCLUkUb+WLMKuHYygp2eExqnv/PTcpmNScVBCheB05kyXggsTnraD5oQnesc8zhCwGmam0q+6KL6a4=
X-Received: by 2002:a25:8012:0:b0:b77:e465:cb16 with SMTP id
 m18-20020a258012000000b00b77e465cb16mr17268393ybk.11.1680258759751; Fri, 31
 Mar 2023 03:32:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:7b92:b0:2ec:b7de:954f with HTTP; Fri, 31 Mar 2023
 03:32:39 -0700 (PDT)
From: Tamim bin <nnannacolins@gmail.com>
Date: Fri, 31 Mar 2023 03:32:39 -0700
Message-ID: <CAJAQTiqDMO_iOfGffcMdOtADP44fYKGNgtEEjQy8zsHBNTfWHA@mail.gmail.com>
Subject: RE:Saudi Arabia-Inquiry about your products.!!
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680258760;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FkI2MmqGF5oIUSFRmETEokwPY40pnpPnttUx4Cx3Heo=;
 b=JVBmMPDZ5+XwhBMjiPIq81xoIz+jH2+YGgnaUWtTW0+aoOzrL9mSDBT8CwAL/Qzcqq
 6h6xfOUDQf3b4bdLEGStYBsSWwvpjyEmBpeuCztrXUiibGBdkbIaNHSzTMQtHBaFQSGo
 aLtKG5S2cIh40/+W9sqrJdnS0IMbb7Kxs6i6YsCIyC7iEl3w4Whd8TzEmJwnaJCojGTf
 hreb0f0/eDMkUA52GynK98+ABsK7t4mZYR1P72WvbPNl6gORSO4442/+Cr5SqU1abC0n
 Mg3nhebKLQzDYdGc7WWPI1BrSZoPcHRmuBpD8oSLvefRGWOV367eEJOUtBvFfBLdap5M
 ylaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=JVBmMPDZ
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
Reply-To: tamimbinhamadalthani00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir/Madam,



Can you supply your products to  the government of (Saudi Arabia). We
buy in larger quantity if your company can supply please reply with
your products detail for more information.

Looking forward to hearing from you.

Thanks and Regards

 Mr. Tamim bin Hamad Al Thani

Email:tamimbinhamadalthani00@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
