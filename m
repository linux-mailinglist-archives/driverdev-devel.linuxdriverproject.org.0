Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CA662EC57
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Nov 2022 04:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5093B4010E;
	Fri, 18 Nov 2022 03:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5093B4010E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Us0LJC9lFMoW; Fri, 18 Nov 2022 03:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 092F4400DB;
	Fri, 18 Nov 2022 03:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 092F4400DB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50C571BF8A8
 for <devel@linuxdriverproject.org>; Fri, 18 Nov 2022 03:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 397928209C
 for <devel@linuxdriverproject.org>; Fri, 18 Nov 2022 03:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 397928209C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tn3lCEpJ4VEy for <devel@linuxdriverproject.org>;
 Fri, 18 Nov 2022 03:28:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9488880C0E
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9488880C0E
 for <devel@linuxdriverproject.org>; Fri, 18 Nov 2022 03:28:03 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 p13-20020a05600c468d00b003cf8859ed1bso3152914wmo.1
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 19:28:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Hlvj0Tz6zhptZ5K7KmxHSs7fAs6bg0LXqtctxiLPW0E=;
 b=5uvNbN7pCDrAjQIWTIfuMiJ9NJvr+ZvD23SM7OXapQH/oOo+tyvn73wpKvTSelYPAH
 QoJO+eHTbMTqs1zT8t6URqqWzBpjeKCBquOAljSxIU89oBeU7V08mq7hUWOCM2tISNIB
 mnRL3niO93QACDXG+hzXceV6DD4WvifpRv4/6P/weajIyqELcTHois48gknSZQUa7SSc
 dHrIijVuloCJlQi3OyIXjoZBlJVlhX216MPwGrTu1xzqKXlRsVysxw9s4qkqnswFxlkv
 kDT8Tp/2vPCsueopdcaJCNZcDlu1cVOKzO4eWVD4XyZOD1AkEK+aqmrhTAD6r9YyY9B+
 iSmw==
X-Gm-Message-State: ANoB5pnN7X/sqhsDTFgDtSeqviDN6/7XbwgyrpB2nBvORbW43Hhi9sup
 GIXL8bg4N8BZA5CAv+OzREfc+L4Gei++cYHccM4=
X-Google-Smtp-Source: AA0mqf6ro6HjzLpr6f2G771hvBtSAfLGOXLdVxIYJIH56gUfyGL9L65hdynbTCV3pbRdNC1ywpoJJgA6v6Xz065HzWQ=
X-Received: by 2002:a7b:c055:0:b0:3cf:a6e9:fad6 with SMTP id
 u21-20020a7bc055000000b003cfa6e9fad6mr3413449wmc.206.1668742081281; Thu, 17
 Nov 2022 19:28:01 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6020:5a69:b0:22b:dd3:7cb1 with HTTP; Thu, 17 Nov 2022
 19:28:00 -0800 (PST)
From: "Mrs. Sakura Cochran" <dr.john1campbell@gmail.com>
Date: Fri, 18 Nov 2022 04:28:00 +0100
Message-ID: <CAKv7n+meEUSfL8KgQ+vM_B7GOiqhz_X=r=tqHaqGigCmPcrQUw@mail.gmail.com>
Subject: Good day
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Hlvj0Tz6zhptZ5K7KmxHSs7fAs6bg0LXqtctxiLPW0E=;
 b=QFXA33CMtUMVcvuANGjfJ5v8rRMsZ69Euw6XdYojGrllrwQ9tgVX059v9xmf7v55kH
 FFwoLW9go6ko4lOge/o0YXDDAoxCE3t/9QcJXA/ZvQHs1SbMBhIGHeDk4beklFV7P4Vi
 C2eNSbol9Rh9nG0W5xwi5JrUBxEUzpkAW+QKjlsCOIb2vym8Keg07Iq29NR2Pf++IbhB
 3XTRYtXsXf4t1OF1Px5qUbhEE49fxdvjECNQwWFvAoBAYaet2ytpZaQeIU401XaIQtk/
 8Os2I2cf5wtsAS+6VHkDQawvL30ZdbzsRO6chQKfYWd2QZIx9D2qyw/tAZMiJjzjp9fA
 qu2w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QFXA33CM
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
Reply-To: sakura2cochran@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Beloved one,

I want to donate my fund US$5,600,000.00 million USD to you on charity
name to help the poor People. Mrs. Sakura
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
