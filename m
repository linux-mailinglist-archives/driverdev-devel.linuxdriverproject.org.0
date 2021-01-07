Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D382EE7A6
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 22:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74B6E2E0D9;
	Thu,  7 Jan 2021 21:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAUGjS1Wlhz4; Thu,  7 Jan 2021 21:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8594A2E0E8;
	Thu,  7 Jan 2021 21:31:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48A531BF398
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 21:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3127A2E0DB
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 21:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VeFvhuSC4kcP for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 21:31:52 +0000 (UTC)
X-Greylist: delayed 00:52:25 by SQLgrey-1.7.6
Received: from outgoing3.flk.host-h.net (outgoing3.flk.host-h.net
 [188.40.0.89])
 by silver.osuosl.org (Postfix) with ESMTPS id 310662E0D9
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 21:31:52 +0000 (UTC)
Received: from www106.nur4.host-h.net ([213.133.104.106])
 by antispam1-flk1.host-h.net with esmtpsa (TLSv1.2:AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <Ida@online.no>)
 id 1kxc40-0002hv-Tj; Thu, 07 Jan 2021 22:39:21 +0200
Received: from [155.93.153.8] (helo=[192.168.0.103])
 by www106.nur4.host-h.net with esmtpa (Exim 4.89)
 (envelope-from <Ida@online.no>)
 id 1kxbrb-0001nM-Q6; Thu, 07 Jan 2021 22:26:32 +0200
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Proposal 
To: Recipients <Ida@online.no>
From: Ida Wolden Bache <Ida@online.no>
Date: Thu, 07 Jan 2021 22:26:23 +0200
Message-Id: <E1kxbrb-0001nM-Q6@www106.nur4.host-h.net>
X-Authenticated-Sender: inge@wordmaster.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 213.133.104.106
X-SpamExperts-Domain: wordmaster.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@wordmaster.co.za
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.74)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT/pqRwNo9qEuk7C3XyIHspgPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5xng5oTQ9Gg+veqeHGUjslU9h3eg4toHJWLEcz/DXIflGXX
 nyfb+wH8NJ2dR/JMdGEQHamcVqIEcpb7C8ozagEtCGebq37ub7A60jKJnL9Lld2u7rGH7O6AbeOm
 egmsB7kxktFrxSSCSJ9OatcKLpkDkAFqVuij+Ed+SZ9C0zmEvYs/6OGUJH1kQvJsEY33PTyumYmi
 y+P5DcqvorNlgSm1ZVtKxCmmXPA4DoMamS2t2iU08SQo3XKnIixUM5uYd8r89/1oVOKSsRrcyy4P
 59cjdc7Dg7DmOXC6VlO/x/FNRiuWoTnhSmxNtjIzfbgro89L37iD6zPJezK7X6Qa4kszsxjB4oRN
 T6zcoHK26sznmilwqztf3ac+KP2sWFYhjQNCsRfY1RLVPSd9/TPCxS8UJb71o3ywbshyLF9MKC5F
 9S5B6pkFmeoP72XApxcg2B9jpQrCUG2mHr7rye9aPGgAYvTtnnBJY8/3NZM9P/E44q9XJldLkZ4Z
 ggu08rqMlZI+7LxVSc3JzGsN7s9XMFOep/EAT0R4diQmGQr0OjQ+R6RgEVPSblDgl0hmQEy2K5A6
 2/AAInNfz7ckazu607KCsdUwB6NjS4W44STU3GOk1CIWGXYUHe5dXnKFtuwN6Q+b/zucomtFzmh1
 2ym2Yhu1mWYn6CBI3PWxZoLDQXycHgncTx/fGPCNOaDFh3O4mJLUkJJnrb0T7jIdJJQ+joSr04HH
 YPad5OG3Ex9hES7nOcaJFn9isNKfImsWsY1VxqZKEPZuqejto7c6TXRUEk42QoweTv01oLe1TbE4
 xQGOxIQnRc9gy5Ne2kHu78FebOiMQhWt+IqBwYtnp9Do1oCYRFNLRK8kx9CkUf3QTXKT/l7jPbZu
 yvlPJuuQI6rmp4tDvQdvCRRVuZLrV6dkBe9OYSKrA6omOTRbhJpQphi7B+GKwJoacmIoidmUTE3j
 X0IcU5M6sWLYvSYjlBvKf73Ahl2pBchqpohXCVOKbSo/YA0f9Fxnt4nUt5LVrh5TtUG2VVV9CEgp
 FLD35ryWoxpIRAwX31WVY5lWjWxuGSRuxeZeM53TqUKdYcdqXlFbAOIG9Ijhux8umdYRAwEZ6gI8
 p5Tpsoh1CJ3SA7QpT5XePWUa6KG7USrwMOr9ODN7I4CVxmQ9Grs2GjHIzCqLxDbdY0fsfLb1Ff5g
 wNs50H2tQR3mA3n2D1mWkxaBJ6fsbt96EipRzMVZ5LqwTx7Vvn9ScEn22002XRS6i/HVcRklp9th
 Na2bAXeERasg4oWfAuCFuAjdNLJnweOC89vYQ5Q7kKGHFdYykmm2fmhTOihnWweYUOp7A73HI6oJ
 g7w/Vofxgh3X6Tch/B/wCWhK0Ndr2qGXjGWToOr7ey19bCj8kmKd01Oz4bOmEJzBRL9T+BsFdUlT
 1ClyIMwu120R7TWQp0lFZoAata7A6ObjRlA9rFk4PY4L/ReihJhJq3IK7NIccBIk1Sag4dKiqCrF
 8eZZpJ/iEiSxuZrGMxH3vWvsFwIvTO3RDLN/gvtm8H+HkfAXs8Okui+2Q94IwB7lG/Tsj1PIdmj8
 SCe0uxt0RDUMj+UBqgy5MvLKcM3fuCJIS+zDvFzD0jdhHQlzgreQRNC2Nsj0ZNx9ROADUXTdQZTy
 OS3cL5R3tOhOxCQ6Dfv3eKlm46q46YXk8tm7Qi8zlHjU
X-Report-Abuse-To: spam@antispammaster.host-h.net
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
Reply-To: bacheidawolden126@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings from Norway,

I got your e-mail address from google database when I was in search of someone to assist me to close a transaction.

I have a proposal to share with you. Kindly contact me via email for more communication.

Regards,
Ida Wolden Bache
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
