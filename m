Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E57236402F3
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Dec 2022 10:11:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13CE88213D;
	Fri,  2 Dec 2022 09:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13CE88213D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0YAu2jWCacs; Fri,  2 Dec 2022 09:11:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F0B8213C;
	Fri,  2 Dec 2022 09:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8F0B8213C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 650981BF2C2
 for <devel@linuxdriverproject.org>; Fri,  2 Dec 2022 09:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 404F48213D
 for <devel@linuxdriverproject.org>; Fri,  2 Dec 2022 09:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 404F48213D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1b2oGh5Ab-g for <devel@linuxdriverproject.org>;
 Fri,  2 Dec 2022 09:11:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A78A8213C
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A78A8213C
 for <devel@linuxdriverproject.org>; Fri,  2 Dec 2022 09:11:04 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id x2so5695618edd.2
 for <devel@linuxdriverproject.org>; Fri, 02 Dec 2022 01:11:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NGtq/e0lWyqnA20QUEIFJQOB5+8k923Y1EyiOteAHkQ=;
 b=OkSRPCQ+FTgD189uj9j3HynHp+3cwGQpONpbLNhn3hZzYy8TqvyzT6WC0KqOjct95/
 BmysR1ItGvoeQxeHfDgIBDyRqJ7Bc319g1Uwzpou1o6TJYQiplmUauRuli3NPttF1Dqq
 5bHRYb4nP0JdOuK6pkLXrn1Xun69brVhvMvQJ4i16482N64lXYjA/RaEI/8haObg4d5/
 QX+B06KzwQia94MkK0aO7DlWqrjyifhfmZ6hUSz8zf9MDxto2XFMO9F/hakVfk4fEt6i
 YobG8m2/9NbiAakaoH8r6vBvkeFuAd0lQYl7A71m6In1LKGg7cOoweLWogd1vLpRBVWz
 j4/g==
X-Gm-Message-State: ANoB5plIM839uZZpFlUBWsH42xrrWyp3n0D8eDmtSjOasha95kIUSf9D
 WkdN8YbFWzl6NnxUVqmhGL0EmuSpyxSwf6Rjx+s=
X-Google-Smtp-Source: AA0mqf47or8+fL9k/HMgDs5T9z/YQYOVC9DvMTPNC1E92N8ZB/FDLBkUIckD6+J4UpqKeUTj62EDs6TINMzAcrusq1g=
X-Received: by 2002:aa7:db47:0:b0:46b:1ed0:2702 with SMTP id
 n7-20020aa7db47000000b0046b1ed02702mr20791862edt.177.1669972262562; Fri, 02
 Dec 2022 01:11:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7412:f610:b0:8c:fd51:33f2 with HTTP; Fri, 2 Dec 2022
 01:11:01 -0800 (PST)
From: "Dr. Michael Omar" <oouedrgogo@gmail.com>
Date: Fri, 2 Dec 2022 01:11:01 -0800
Message-ID: <CAGpdYK=XaCbMpRrVJ7VDMbLEHbPrCm4ir7tup0DgRLy4WL_y+w@mail.gmail.com>
Subject: Very Urgent,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NGtq/e0lWyqnA20QUEIFJQOB5+8k923Y1EyiOteAHkQ=;
 b=k2ysRFVH2nRYeb44QJlrzfAjPr63ezkWnLH0Ayi2OJJ752npYux85nLuRyRyXqw1UI
 onot9i7JZhwM+bksUoagb1gIxCdtXMkjBqbZE+d2y8NEN1WZqZtJ2JHmjWQAda7F1UUd
 s0cU9mOhE6N/7OnGROehmMCWBvahJmycgop5sHQz+6Sktp0DBHj790zzY/f0267ZjH2p
 Nv9uut9+0VRiyJ8pBJV1DkIp5SniVEsKjmxeekCYQFDXQ9PC7/sT8ctKXgHQDrqAEjF4
 ufhnQD7UuYI2wkFHYUsdsJ6JwQtlD1uyFxifV9JEfsjKXV8fZzkrD3Jn3AYiUqPZ5PjX
 pwQA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=k2ysRFVH
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
Reply-To: mdm223664@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,
I tried e-mailing you more than twice but my email bounced back
failure, Note this, soonest you receive this email revert to me before
I deliver the message it's importunate, pressing, crucial. Await your
response.

Best regards
Dr. Michael Omar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
