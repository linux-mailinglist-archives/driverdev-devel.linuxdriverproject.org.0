Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B393F86F5
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Aug 2021 14:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B72242637;
	Thu, 26 Aug 2021 12:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdB6xNwDX7RO; Thu, 26 Aug 2021 12:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 981A44261B;
	Thu, 26 Aug 2021 12:07:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2CBF1BF580
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 12:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 914AD401D4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 12:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4bh-oCcjdrzn
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 12:07:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 602A84013B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 12:07:16 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id r4so5449493ybp.4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 26 Aug 2021 05:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WuDQPRa1pRZEmgy3rMsrN6WxMhN/6RZwdTFnT+vP0Q4=;
 b=fumovEodqXF88qMeFH75nQWzvtLT33544VoKup+JS4LLEIGmwxHPczxfgJCJRxa1Fk
 odVIAqx3t6b/ZMfWaTCnb0/6cR/shWO0CqblagImNj7h2R7UXaNdqOG0AuGXayHbsx1/
 No+ctlaXAe4tZCNXUUiib9gq7GBzzBWxEUaYWRsTh+e4T8loUAEmHI5FLfxKzpugZ/1C
 RHtl/b3PREfOJeoJ1yVhCvA5h7p1OCkOzSfuCv10k/XYUAsfNznbLoSGM13VdVJHMKD0
 WDJpN/oiNen7UFXrqdNxXqME+ipfxIcaDWlDYJb1jC6NJ1/N+RZeB3JHp5KxWW4aHBYE
 /nvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WuDQPRa1pRZEmgy3rMsrN6WxMhN/6RZwdTFnT+vP0Q4=;
 b=TBFtke0TCcyTuZWGlDzsEwF1eJUbuFOPHYNrozfYfjEiKfxY17LJGaxQkIFjSTLpgY
 XPzaIx5yQBkPPSSJb5AVFyKg8/Xq6BoP6o1Xe4yNgX3AlX0LZCIaVC42hZuf6kcBvYTh
 mqSN9T6aCsD+TPiVA6oW8IvqjSud3nR4YGCAdWXAZWaztJOw7jtDfWoF4Fm88SPDei1W
 VY0O4RRNHBR1AitCzaSDXsbqkYVy2hu4xcrQzM0vpkK3nIQe3jtCn52Iy7l6Nz6RQuxL
 3nfZ5sDyne3zdkjC0l30qORvvy22l9guO5wHJmnO1o/biJxKIy+tfufkUOFfZzrqbTbp
 HgHA==
X-Gm-Message-State: AOAM5328vBXyAdTGvz0TUxSt7gCkqHTLDGec209jsdofd+twEstEXQXn
 UyQnmmcgYgah07TwEBNIxvVFkTGx0Fss9iZgk5U=
X-Google-Smtp-Source: ABdhPJxstGFvdh6S16Tgmmoy6Uq3XNfoSlzRF6bWwhnw3+WBVGuVc5NV24jyNQTHkqP95ECO3Q4a4uWymtOr2viZTPM=
X-Received: by 2002:a25:cd85:: with SMTP id d127mr1760218ybf.453.1629979635287; 
 Thu, 26 Aug 2021 05:07:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:5782:b0:107:4632:8a15 with HTTP; Thu, 26 Aug 2021
 05:07:14 -0700 (PDT)
From: George Micheal <jacobappiah95@gmail.com>
Date: Thu, 26 Aug 2021 13:07:14 +0100
Message-ID: <CAEUV9Dt-qvO-JtF9YtUCoQuCBM73PveS4WpDz1pZoArWuh+d8g@mail.gmail.com>
Subject: Read my mail
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
President Baba Yahya Abdul-Aziz Jemus Jammeh the Republic of Gambia in
west Africa, who is currently in exile with his farmily. I have been
trying on how to get in touch with you over an important issue
concerning a project that will be profitable. I anticipate hearing
from you for more details.

Yours faithfully
Mr George Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
