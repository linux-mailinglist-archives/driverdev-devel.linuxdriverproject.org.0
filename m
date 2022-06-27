Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D3F55B95A
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jun 2022 13:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 830AB40C1A;
	Mon, 27 Jun 2022 11:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 830AB40C1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHzMJPTmY_Ze; Mon, 27 Jun 2022 11:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3854440C16;
	Mon, 27 Jun 2022 11:33:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3854440C16
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C8191BF20D
 for <devel@linuxdriverproject.org>; Mon, 27 Jun 2022 11:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E82AF83F35
 for <devel@linuxdriverproject.org>; Mon, 27 Jun 2022 11:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E82AF83F35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgY2A4D4pXhs for <devel@linuxdriverproject.org>;
 Mon, 27 Jun 2022 11:33:15 +0000 (UTC)
X-Greylist: delayed 00:07:01 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFD2983F50
Received: from mail.transporteandreu.com.ar (unknown [190.15.217.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFD2983F50
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 11:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.transporteandreu.com.ar (Postfix) with ESMTP id 151B9405CFBBE
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 08:26:11 -0300 (-03)
Received: from mail.transporteandreu.com.ar ([127.0.0.1])
 by localhost (mail.transporteandreu.com.ar [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id fRh5RRAo9LAC for <devel@driverdev.osuosl.org>;
 Mon, 27 Jun 2022 08:26:10 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.transporteandreu.com.ar (Postfix) with ESMTP id AE4B5406D15C0
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 08:26:10 -0300 (-03)
X-Virus-Scanned: amavisd-new at transporteandreu.com.ar
Received: from mail.transporteandreu.com.ar ([127.0.0.1])
 by localhost (mail.transporteandreu.com.ar [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id bx3T_STSsffn for <devel@driverdev.osuosl.org>;
 Mon, 27 Jun 2022 08:26:10 -0300 (-03)
Received: from johnlewis.com (ec2-35-89-234-8.us-west-2.compute.amazonaws.com
 [35.89.234.8])
 by mail.transporteandreu.com.ar (Postfix) with ESMTPSA id D20A9406C25C5
 for <devel@driverdev.osuosl.org>; Mon, 27 Jun 2022 08:26:09 -0300 (-03)
From: John Lewis & Partners <robert_turner041@johnlewis.com>
To: devel@driverdev.osuosl.org
Subject: Pre Order Enquiry
Date: 27 Jun 2022 21:26:05 +1000
Message-ID: <20220627170710.7E53C2CFC9306CA5@johnlewis.com>
MIME-Version: 1.0
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
Reply-To: robert_turner@johnlewis-trades.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear devel


 
The world famous brand John Lewis & Partners, is UK's largest 
multi-channel retailer with over 126 shops and multiple expansion 
in Africa furnished by European/Asian/American products. We are
sourcing new products to attract new customers and also retain 
our existing ones, create new partnerships with companies dealing 
with different kinds of goods globally.
 
Your company's products are of interest to our market as we have 
an amazing market for your products.Provide us your current 
catalog through email to review more. We hope to be able to order
with you and start a long-term friendly, respectable and solid 
business partnership. Please we would appreciate it if you could 
send us your stock availability via email if any.

 
Our payment terms are 15 days net in Europe, 30 days Net in UK 
and 30 days net in Asia/USA as we have operated with over 5297 
suppliers around the globe for the past 50 years now. For
immediate response Send your reply to "robert_turner@johnlewis-
trades.com" for us to be able to treat with care and urgency.
 
 
Best Regards
Rob Turner
Head Of Procurement Operations
John Lewis & Partners.
robert_turner@johnlewis-trades.com
Tel: +44-7451-274090
WhatsApp: +447497483925
www.johnlewis.com
REGISTERED OFFICE: 171 VICTORIA STREET, LONDON SW1E 5NN

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
