Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A13A41CB
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 04:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0BA4893D4;
	Sat, 31 Aug 2019 02:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SkE67gMDqz8q; Sat, 31 Aug 2019 02:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0826E8940C;
	Sat, 31 Aug 2019 02:51:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2778C1BF317
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2249687FF6
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMf8o9EkN3Nf for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 02:51:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from saturn.customerdnsservers.com (saturn.customerdnsservers.com
 [67.222.148.220])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DDB087FED
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=islamicuniversity.co; s=default; h=Message-ID:Reply-To:Subject:To:From:Date
 :Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l59i1IML9OEXDK/gaSYlrplNT1qmwKTRnaGNXYJpu1U=; b=mHW8GYkrsauPLtodu7WRKU1ffH
 m7xk+ovEdqmvWedbcgIUyl9ntaDFPpo38FGKOhs47lAnmSt4j41m+sxPA+W2vDMeCQq8V3zYTMI+Q
 av/8GlOBPGLzLRjO/+iDLkUxMh3cv7yNNHKJO9j0CsExnEW1jERULP/TT8MA0cx9b9wtvLrIOjOR2
 5DvMz9qKlAg3fQ7vghdpQzh3Ygo0TG6LU09HD6cDHO9aqx8vDI/hepsbEzHb3Pb3mDT4DY4vYljIV
 E9Sjx7MSJP66BjmteYdrXw9tVuDz1tg2XYSmcDVYw7UU/Nx1MsKayBDHYXkXCZ5R9L/QEQruPwUk0
 3cH+KqfA==;
Received: from [127.0.0.1] (port=43760 helo=saturn.customerdnsservers.com)
 by saturn.customerdnsservers.com with esmtpa (Exim 4.92)
 (envelope-from <admin@islamicuniversity.co>)
 id 1i3pJ9-009FBS-QN; Fri, 30 Aug 2019 17:23:51 -0500
MIME-Version: 1.0
Date: Fri, 30 Aug 2019 17:23:51 -0500
From: Mr Owen Peter <admin@islamicuniversity.co>
To: undisclosed-recipients:;
Subject: <<Your Partnership Required>>
Mail-Reply-To: makatiemeka101@yahoo.com
Message-ID: <01491205ecf14dbb6316949f3673b99f@islamicuniversity.co>
X-Sender: admin@islamicuniversity.co
User-Agent: Roundcube Webmail/1.3.8
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - saturn.customerdnsservers.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - islamicuniversity.co
X-Get-Message-Sender-Via: saturn.customerdnsservers.com: authenticated_id:
 admin@islamicuniversity.co
X-Authenticated-Sender: saturn.customerdnsservers.com: admin@islamicuniversity.co
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
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
Reply-To: makatiemeka101@yahoo.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
Good Day,
I hope this meets you well.I have a proposed BUSINESS DEAL that will be 
Beneficial to both parties.Please consider it legitimate,legal as your 
personality will not be compromised.Please Reply to me ONLY if you are 
interested and consider your self WORTHY to handle for details.

Sincerely,

Peter OWEN
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
