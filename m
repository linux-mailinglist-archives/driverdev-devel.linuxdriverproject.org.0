Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9356C1140
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Mar 2023 12:54:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EE22405B0;
	Mon, 20 Mar 2023 11:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EE22405B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jX3Glk_DumuW; Mon, 20 Mar 2023 11:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F8BF4014E;
	Mon, 20 Mar 2023 11:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F8BF4014E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 872BB1BF2C5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 11:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 604B640576
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 11:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 604B640576
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fSVq4d8HGmNc
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 11:53:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B11E84050F
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B11E84050F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 11:53:54 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id p20so12102617plw.13
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 04:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679313234;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=E/rchpbci0oGJFU/rerYrbZ3G5aUGUknrgp1qcNbtny5dYq8RDaE2arLg6Jkn4YWn+
 1/SD/9/4jE7MXqZeeJdUOvArjyAxsr+OMGA3nzdRUcU6CY+XezlDqdt1lxxNDf6Ij+gp
 8MURNLhV0R37Pg4MbdSEZByQYgs1zrxU7xuNwIs9jfrVasJt3qZYGVPqJ4yQtPj4iSQ7
 0XikkUcnpBEEOqg8CODKk+yCBTCltFbCu966gRCQZq4eJRtcGyfNZxlUBeg3TwMxzPDM
 Z961qBcDK4MAoPg5I0MgJG27CPYvzvckApgt//KJW7OHSCvQrgrVdDTp4uqaoxxllEyX
 3jrw==
X-Gm-Message-State: AO0yUKXX+z41AmI+/5VU9iVXN7xMWg1UDbnnlSZqU9E6vgEe2Jv2qjxC
 rxHw+5CoumynaUs13b2dgPeh+RhbaSUjPKzk65M=
X-Google-Smtp-Source: AK7set8mkR+b3Ilbyhr7jVj9+5sIiJAz9zPm+XFGNS/OBmch/9/PULAy1sWfVLtcvBKqR2FfXIfyNKzUEySssbSj2Hc=
X-Received: by 2002:a17:903:1cb:b0:1a0:7630:8ef1 with SMTP id
 e11-20020a17090301cb00b001a076308ef1mr6621138plh.11.1679313234034; Mon, 20
 Mar 2023 04:53:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:672c:b0:5d:7366:1b23 with HTTP; Mon, 20 Mar 2023
 04:53:51 -0700 (PDT)
From: nina coulibaly <ninacoulibaly215@gmail.com>
Date: Mon, 20 Mar 2023 04:53:51 -0700
Message-ID: <CAOXQc5G9DfwgvHML5RGdvYmGGO4ri5hn03jgsOG6Fvh79sn=Pw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679313234;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oDVdWICwavrWQ8UAVYhe8ynFXsBBW1vVQ7W08zgiq24=;
 b=ozbwy4kk2s6VVo6fjJhV2IpPV1YEysE4xPs6VMr0swp46RH/RIV9+IxlV2eXUGwmLd
 zKSWygf6z7txkWcQGNXsRYHIZI8q3VbTxNudj+XhSLUmN442VLEPTQoyZJ2wkOgADLvk
 kP97nhoiYU953auVbfae5Et86dnV6N2lcSsCHPBvfroUsCtZTtuEA2cJmQ83W1pQ9b2+
 DcZ8aEAxOrsThLLRvCY0zjkHPRodw9bLFagtARPhlJRMrOCpQhWFzWEeWpsm9OR5ldjf
 J744AoO6ouybQpI1rFo1wbFTK3Z1tOG4D8Q1SMUubtRu2cajge+OyxVCS4io8WEc0ix1
 YQfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ozbwy4kk
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

I am interested to invest with you in your country with total trust
and i hope you will give me total support, sincerity and commitment.
Please get back to me as soon as possible so that i can give you my
proposed details of funding and others.

Best Regards.

Mrs Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
