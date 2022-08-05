Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C1558A578
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Aug 2022 06:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD9A16F926;
	Fri,  5 Aug 2022 04:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD9A16F926
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yK3QvMUO5IHv; Fri,  5 Aug 2022 04:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E2146F90B;
	Fri,  5 Aug 2022 04:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E2146F90B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 596BD1BF306
 for <devel@linuxdriverproject.org>; Fri,  5 Aug 2022 04:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 344236F927
 for <devel@linuxdriverproject.org>; Fri,  5 Aug 2022 04:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 344236F927
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6m1v2dCuEzB for <devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 04:35:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 800FE6F90B
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 800FE6F90B
 for <devel@linuxdriverproject.org>; Fri,  5 Aug 2022 04:35:19 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id b96so2054740edf.0
 for <devel@linuxdriverproject.org>; Thu, 04 Aug 2022 21:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=ZTgav1dKpwUPh+wgmpnfEoUJbgNQZuS8iUL6mFCl9zY=;
 b=8QBmzSDHt/EhH2YfAYsLpfRSpUq+DhU+YOBZaAQWPrlPIaFh6SMXzQn1wNrtbPirgB
 32LOn0PNGftAjnndGlKjb/TdXWK/x0hJ5Q0u3FdekKRxKej2SZBDwlcFeSDI6CpSR77r
 teedfuVonqayIwaRr8u6UY0og6jragLxsiknCneAYCIEupEHjEwmAuVgII276aChJif/
 ZwaKPTa9y48aEmhBLMc1IvyUfp618HzME8groSSXt8ptQbB8VsEknVG9c3AL1Q9pVFAj
 T6BxD2M3az7l4Xd2RX288KhVkid6jveHlcTPDzeLsLU3vtJ7FAli3sJ1XuPvEnI2tg1g
 RLhw==
X-Gm-Message-State: ACgBeo1nxTLTotLY+GPEweMCHLi8cZXr4x3UnBc1YHHCMBhi35a6ZaPy
 3q+CV2uj3WODglopvaueK0IxtDoL7Rx2mDi2xag=
X-Google-Smtp-Source: AA6agR4WOorZ2TphTu5iDdxGqqgRaPAq/qDJA1ga0heDVkj7kyXmI/GqyQw5DiVrIPl6H5wJBVTxPH3R6qpDS+3DIDc=
X-Received: by 2002:a05:6402:414b:b0:43b:6b1a:c230 with SMTP id
 x11-20020a056402414b00b0043b6b1ac230mr4975457eda.42.1659674117434; Thu, 04
 Aug 2022 21:35:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:f07:b0:730:81b5:aa3b with HTTP; Thu, 4 Aug 2022
 21:35:16 -0700 (PDT)
From: "Mr.James Donald" <kones66221@gmail.com>
Date: Thu, 4 Aug 2022 21:35:16 -0700
Message-ID: <CACZ18bOvk=MF26UtBb4kgV6Ebd1GK1D4L9StOcVoCs=w_W01=Q@mail.gmail.com>
Subject: Re: Business Partnership
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=ZTgav1dKpwUPh+wgmpnfEoUJbgNQZuS8iUL6mFCl9zY=;
 b=HGdOW/m7efo65zBughKwouYvF8RFCpOtzY4Jwg1eaWL7LRnGdqAIlhYLA0WAvt6vpE
 OaPJ/Qr0ng5el1m0w1z51RLOWQ29z0ZRiPJpv1uiBYcShg6srAp87aCiC4p+tgGYlFsS
 vB0hs4HlEWDtP79kb5BYujrpXGsHm/UTSyvvCip632xqcnD2HD+A8z3wmhHQ4R6ZYFeA
 E6JRcUC1S56SXfef7iDg3r5qs0YYpEJ7PhMZWF6K3Kg8iMdnUTdhm0yruF9S0RooKm0V
 onIiwgNZKqRfS4V1iC8fjJEBadKw27pwRj+XxnFbXXA1JZ7xBnIEVyfa6Se03AJbC3UM
 XSvQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HGdOW/m7
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
Reply-To: jamesdonalda777@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/ Madam

My name is James Donald  I am  from Burkina Faso a  minister here  is
interested to invest in your country , he confide on me to look for
trust worthy  person  who is capable to partner with him to realize
his investment  plan with  (  USD. $35.5 Million  )

He has an investment interest in Mining, Exotic Properties for
Commercial/Residential and Development Properties, Hotels and any
other viable investment opportunities in your country based on your
recommendation, will be highly welcomed.

Your co-operation is highly needed to achieve this investment project.

 I wait for your prompt response.

May Almighty God Bless You!
Thanks  and  best  regards,
Mr.James Donald
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
