Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C30413A60
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Sep 2021 20:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3671483E3E;
	Tue, 21 Sep 2021 18:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ipz02Z_9w0wd; Tue, 21 Sep 2021 18:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CFB1818EC;
	Tue, 21 Sep 2021 18:53:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CA3B1BF3A6
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 18:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C9B681911
 for <devel@linuxdriverproject.org>; Tue, 21 Sep 2021 18:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SybxYDhfu18v for <devel@linuxdriverproject.org>;
 Tue, 21 Sep 2021 18:53:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6CEC818EC
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 18:53:20 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id a12so304161qvz.4
 for <devel@driverdev.osuosl.org>; Tue, 21 Sep 2021 11:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=yfGPB+Kavk96N8hv8U5G/3HgNP6qeIWJwKEcWM7AJlU=;
 b=gHZ86CvLHZCQMsdzyS8s9ccCKy9U41doXkSTIpqODkC8LkLfr7Q4MEUM5e/U63svGa
 CdEMv9pr3BuZ/DBCV1NkWD8RHOUP2EIQO26+5cehzGDZcrlDxA/p8LGTro4BZJ8OIIhZ
 Q3x3GTeNqjj0dNTQlfy/2VXYaUE5l5Q5H8HJ7onNHKEnfkxHSrSuhA0ZbJPuuSprJtBK
 J5dxYfywJg0f2GgdPX90VM5NEEWIM91A1u/PdeyjMRMwmAhvGWCPzZGhRZCd4V+snPV1
 O8upuKsKDRKZYx9Vz26/qtwLbA9Jx913q0lw/f8iB5xrmoMfr3YrsBjZ4F092y44ptjs
 tQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=yfGPB+Kavk96N8hv8U5G/3HgNP6qeIWJwKEcWM7AJlU=;
 b=uq5T23zDIJdNd7k54BHA9vCvm4ItXXiWYjSGf4GbLiw0f7CetmTcU907O2BNWwfc7o
 OTyFbNNSu44VsfqGMAiqXOhpNyYfcgxNqpqPBoih/in08weeIx8pKRB6D5uLU51tVF0l
 Z5iLehyzO01zi8dvVhdJmJYLJgX2lQoT9xlr0OaWfVcmSrWGoh4JShsx1I4EAGUScwv4
 2VMRCOrNp4ZMJYvFVbORHRQHKky3w7j670HHUr9WGDRnUXf/24qihkaL5f1ibQPGy0/h
 LpoRDCf7uEaJ6/b8jCd0d0rqmlysv0pClIi+ImXoiubOy6+0pPipTnUp6VxXtZUzsC3h
 MbOQ==
X-Gm-Message-State: AOAM532DOci/i0WK1s08xCYIBsERIA2IKpk7XHzIJ7RmdQw21gozwsvI
 ItYF7PWkiM2+tnCM4Qn7WMeGlR9L/PJdSIcs2w==
X-Google-Smtp-Source: ABdhPJyVdAjWuXlrVX2t7c0aOMvhF0I9RnPf/362nUFfjNT/ALPrf0n/XZQZCl2Ru83q+VVz+EuYgKN4aGafossNnno=
X-Received: by 2002:ad4:5541:: with SMTP id v1mr32388703qvy.49.1632250399763; 
 Tue, 21 Sep 2021 11:53:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:4e30:0:0:0:0:0 with HTTP; Tue, 21 Sep 2021 11:53:19
 -0700 (PDT)
From: harrison eruru <lawnkataralegalfirm@gmail.com>
Date: Tue, 21 Sep 2021 18:53:19 +0000
Message-ID: <CACLpMFCbPwnF918P7Z+O_DiE2aEiaKDhW7+3OBRFbhq5dmDEog@mail.gmail.com>
Subject: Response awaited
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
Reply-To: ha.legal.firm@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Mr.Harrison Eruru. On two occasions, I have sent an email
to you which you have not responded to. Can you find time to respond
to me now?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
