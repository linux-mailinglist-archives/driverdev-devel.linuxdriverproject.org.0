Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EF8A416D
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 02:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B41D89369;
	Sat, 31 Aug 2019 00:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJULUOu1Z9rA; Sat, 31 Aug 2019 00:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1501887F3;
	Sat, 31 Aug 2019 00:48:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2671BF9C2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 00:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B721A87B49
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 00:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ar7T-ixJEMVU
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 00:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f49.google.com (mail-yw1-f49.google.com
 [209.85.161.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D88228793F
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 00:48:06 +0000 (UTC)
Received: by mail-yw1-f49.google.com with SMTP id f187so2993864ywa.5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 17:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=IxBgIg4l69kyi9Pn+Z2YxWfpUanE7M6BW+hzJyfmhqM=;
 b=Pqg5DjzDksbCBxODnLXqGa3lDVgqp/aalcjuZHKrhYut9lu2FHDfzpDXXjqjkSmKsb
 Rz2doFlPXMWxdMGqZpUCQdaejW9NRsz1Jr7KM2IZBA6E9I8jIWglUbE6igZiASjzUwck
 QXnnfrXl38XCEPPMzlwqtsf1vm1dllNt38p82ek1MWa4YYX2xSQiSyn7aZSM2IIcAU4Q
 H0UBJsdrMXxJHW9CEm+7fz0aYx/XHn9vByvF8n1vb7L/cddz09qiLgX3vXpHff88B38r
 18rRHTCTTyn5yGwkhKKERrg8dqPyeiBpbGmcrsvOvWJXvc+EMW0jUqH9P1RAFOaCXjiE
 +30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=IxBgIg4l69kyi9Pn+Z2YxWfpUanE7M6BW+hzJyfmhqM=;
 b=atvAOjUoSOQZdXzO8BwWmyRJ21YwVOiL5Zd+bktJQIyG57rSBOEfio981fjE9/NMJK
 Npmro0h72QfbUQ/qjnBPxtVHfrnpBOiud9PIXY/Tw3l+MzTeTELeVj6Df0L+oeiZJfOo
 3OuTkmugqAU7+NZv7aX6iZrFk+Q8XyiNQ47L42rIEpuwEBSgw4/12wkKNvJKY/XEQ2L1
 t31KpcUaCpQLXV4kX4VunTg0G9c24cmQonz3oRf4P5DSEKAW17gX+mGryj23syfAoYX7
 OZl6/2XkF9cYp4XKU0H7VQStgNW/3ITn4PAgsZAHQtf0z3Ykt/EfOMBVoF5AqhWR6tjP
 XLYw==
X-Gm-Message-State: APjAAAUqtjTMmijg+lnGygwnQpeKSFG0i3n9PreDE7xHdN5CTIqpTkOa
 OPXHZeXZwu7DJcM9LKe60ih6eP2oEyLW1k/B0mGTzlA=
X-Google-Smtp-Source: APXvYqzRKB4vYFIon84YHYYokWKiFA6hBPeHm5PGBoq9McDfmU849kAT9OWjkKeaN+vEoa52kqs8F4BdvSONIozyxoY=
X-Received: by 2002:a81:4705:: with SMTP id u5mr12658344ywa.438.1567212485658; 
 Fri, 30 Aug 2019 17:48:05 -0700 (PDT)
MIME-Version: 1.0
From: Turritopsis Dohrnii Teo En Ming <tdteoenming@gmail.com>
Date: Sat, 31 Aug 2019 08:47:51 +0800
Message-ID: <CANnei0E0hU=jvNDZTLW0MZm8pEQVJxLx-b8irFBeVy3X7m4p7Q@mail.gmail.com>
Subject: Singaporean Mr. Teo En Ming's Refugee Seeking Attempts, In The Search
 of a Substantially Better Life
To: driverdev-devel@linuxdriverproject.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Subject: Singaporean Mr. Teo En Ming's Refugee Seeking Attempts, In
The Search of a Substantially Better Life

In reverse chronological order:

[1] Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday

Photo #1: At the building of the National Immigration Agency, Ministry
of the Interior, Taipei, Taiwan, 5th August 2019

Photo #2: Queue ticket no. 515 at the National Immigration Agency,
Ministry of the Interior, Taipei, Taiwan, 5th August 2019

Photo #3: Submission of documents/petition to the National Immigration
Agency, Ministry of the Interior, Taipei, Taiwan, 5th August 2019

Photos #4 and #5: Acknowledgement of Receipt (no. 03142) for the
submission of documents/petition from the National Immigration Agency,
Ministry of the Interior, Taipei, Taiwan, 5th August 2019, 10:00 AM

References:

(a) Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday (Blogspot blog)

Link: https://tdtemcerts.blogspot.sg/2019/08/petition-to-government-of-taiwan-for.html

(b) Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday (Wordpress blog)

Link: https://tdtemcerts.wordpress.com/2019/08/23/petition-to-the-government-of-taiwan-for-refugee-status/

[2] Application for Refugee Status at the United Nations Refugee
Agency, Bangkok, Thailand, 21st March 2017 Tuesday

References:

(a) [YOUTUBE] Vlog: The Road to Application for Refugee Status at the
United Nations High Commissioner for Refugees, Bangkok

Link: https://www.youtube.com/watch?v=utpuAa1eUNI

YouTube video Published on March 22nd, 2017

Views as at 31st August 2019: 593

YouTube Channel: Turritopsis Dohrnii Teo En Ming
Subscribers as at 31st August 2019: 2815
Link: https://www.youtube.com/channel/UC__F2hzlqNEEGx-IXxQi3hA






-----BEGIN EMAIL SIGNATURE-----

The Gospel for all Targeted Individuals (TIs):

[The New York Times] Microwave Weapons Are Prime Suspect in Ills of
U.S. Embassy Workers

Link: https://www.nytimes.com/2018/09/01/science/sonic-attack-cuba-microwave.html

********************************************************************************************

Singaporean Mr. Turritopsis Dohrnii Teo En Ming's Academic
Qualifications as at 14 Feb 2019

[1] https://tdtemcerts.wordpress.com/

[2] https://tdtemcerts.blogspot.sg/

[3] https://www.scribd.com/user/270125049/Teo-En-Ming

-----END EMAIL SIGNATURE-----
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
