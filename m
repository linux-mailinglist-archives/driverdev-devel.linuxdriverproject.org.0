Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B641FB60
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Oct 2021 14:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA16540866;
	Sat,  2 Oct 2021 12:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyaUMhy2uoXB; Sat,  2 Oct 2021 12:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C620940858;
	Sat,  2 Oct 2021 12:00:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B23161BF954
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 12:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94CDE4085B
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 12:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pfziVpW4JDW5 for <devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 12:00:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8886140364
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 12:00:02 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id q6so13332376ilm.3
 for <devel@linuxdriverproject.org>; Sat, 02 Oct 2021 05:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=nsZbpm1YBoHMpWTnzHLuE/zYZ0yg4jBiKD5Q7oCTPBE=;
 b=QDHrJ39sMEu8BMYvZU3NCP2xVWJ3apqATlyWIgxLdN63Ytc/PmCEkUySQqDTKjki/+
 5+tA3YRUJpZ7nDn3GJ1h0RwhhEcKvOi3Jmra6PuIdyfDp0ZSwqg9Gc2GOh0sdkdn+k0z
 ypW5PoHh4/FmqiTV8LbbhggOTY+ppcY4Ft7Ej01n4FCqYB/VStkUn4kU/W0rZhFzOsMj
 8iF+xGJ0SyRhCV7Q5lZGfs6YFI3ufLtHnmr29Yt22Rj0y6hyFaAzJjx5nDupaC0gEv+I
 ZPq6a66zWvReHMJ4QKugue+wFdCNqdgameLCp+MC/PvUXTgUZoO/b5ETB2ZgVRXQPN9U
 E7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=nsZbpm1YBoHMpWTnzHLuE/zYZ0yg4jBiKD5Q7oCTPBE=;
 b=wCYzRMRgXWZVojG2ALWVhNl5aeCWBaCIwcGqHvXx6mW+cyb8r1buLh34vsaJQqDJ45
 oTAmcIEBJWL0X6qP1uHWX22xuo48y85aJxeRizOJH8V4WcEMGYW7EDG++UI2QbENECLZ
 sCtfDXo9OLvIHkBttdlY5rM2KlkGoXcGVzKjKstxYRvVQLcTxjYWParITkW+PMOgOr27
 Ir7lMq2PgNYzV2MRA99eNOlg2trFCvCgyP4p46p704fakxwe7eCK2g1hCnQ7fzRhUrH0
 LaG7Abv680r8LtEsA7VqKGR9+xatRrEjc1eyWT/EDqmJQ+BqKp6EUPbYhT5ArRlRqakc
 k9Bw==
X-Gm-Message-State: AOAM532LipRxYerx05Z975QApmAFMCCfk5fQcP8UO4PiN35QQGvMOg9H
 q2+kgxTWgfqYnqpSctYIydQEsgsjU19J9nfVbDk=
X-Google-Smtp-Source: ABdhPJxOmjBAVMW2nYT5fvETxLNTAYr9I/JWo+U6VNRy1Lo7vz+8FCkgFUADts0lkCMV8QaEg6eYPcMHcMN2R9RGo3E=
X-Received: by 2002:a92:ca06:: with SMTP id j6mr2320577ils.42.1633176001719;
 Sat, 02 Oct 2021 05:00:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:f90d:0:0:0:0:0 with HTTP;
 Sat, 2 Oct 2021 05:00:01 -0700 (PDT)
From: "U.n" <wadebaye33@gmail.com>
Date: Sat, 2 Oct 2021 00:00:01 -1200
Message-ID: <CACE0T5XG4wnU7HGqhPD1kVCXttsusQLOaVTrByP4PnaAUtY=Zg@mail.gmail.com>
Subject: Attention
To: unitednnation0@gmail.com
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
Reply-To: unitednnation0@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCgoKQXR0ZW50aW9uIFNpci9NYWRhbQpUaGlzIGlzIHRoZSBVbml0ZWQgTmF0aW9uIChVTiku
IFdlIHRoZSBVbml0ZWQgTmF0aW9ucyAoVU4pIEdsb2JhbGx5CmhhcyBhcHByb3ZlZCAoVVMkMi41
MDAsMDAwKSggdHdvIE1pbGxpb24gRml2ZSBodW5kcmVkIHRob3VzYW5kCmRvbGxhcnMpIGNvbXBl
bnNhdGlvbiBhcyBwYXJ0IG9mIG91ciByZXNwb25zaWJpbGl0aWVzIGZvciBodW1hbml0YXJpYW4K
QWlkIGZvciBmaWdodGluZyBhZ2FpbnN0IENvcm9uYVZpcnVzIGFuZCB5b3UgYXJlIGFtb25nIHRo
ZSBsdWNreSBvbmVzLgoKClRoaXMgY29tcGVuc2F0aW9uIGlzIGZvciB0aGUgbW9zdCBhZmZlY3Rl
ZCBjb3VudHJpZXMsIGNvbW11bml0aWVzIGFuZApmYW1pbGllcyBhY3Jvc3MgdGhlIGdsb2JhbC4g
WW91ciBmdW5kcyB3ZXJlIGRlcG9zaXRlZCB3aXRoIEJhbmsgaW4gVVNBCnRvIHRyYW5zZmVyIHlv
dXIgZnVuZHMgdG8geW91IHZpYSBJbnRlcm5ldCBCYW5raW5nLiBZb3UgaGF2ZSB0byBzZW5kCnlv
dXIgZnVsbCBkZXRhaWxzIGFzIHN0YXRlIGJlbG93OndpdGggdGhpcyBlbWFpbCBBZGRyZXNzCiAg
KCB1bml0ZWRubmF0aW9uMEBnbWFpbC5jb20gKQpZb3VyIGZ1bGwgbmFtZXM6CkFkZHJlc3M6ClRl
bGVwaG9uZToKT2NjdXBhdGlvbjoKCgoKWW91cnMgU2luY2VyZWx5Ck1yLiBBbnTDs25pbyBHdXRl
cnJlcwpVbml0ZWQgTmF0aW9ucyAoVU4pLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
