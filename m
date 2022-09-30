Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 591E95F05E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Sep 2022 09:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C6D4612A4;
	Fri, 30 Sep 2022 07:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C6D4612A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSzL5pUsR0Jd; Fri, 30 Sep 2022 07:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD05C606C6;
	Fri, 30 Sep 2022 07:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD05C606C6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F088C1BF2F2
 for <devel@linuxdriverproject.org>; Fri, 30 Sep 2022 07:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA1C260AC2
 for <devel@linuxdriverproject.org>; Fri, 30 Sep 2022 07:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA1C260AC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSULcXmmxGy6 for <devel@linuxdriverproject.org>;
 Fri, 30 Sep 2022 07:41:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7628B606C6
Received: from fsfvdiej.episotheque.com (fsfvdiej.episotheque.com
 [81.161.229.202])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7628B606C6
 for <devel@linuxdriverproject.org>; Fri, 30 Sep 2022 07:41:25 +0000 (UTC)
From: Donald Kolman<san.con@episotheque.com>
To: devel@linuxdriverproject.org
Subject: IMPORTANT
Date: 30 Sep 2022 10:41:21 +0300
Message-ID: <20220930104121.C798A42270571277@episotheque.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=episotheque.com; 
 b=Nh8hIQTLAr8IEpSXKBX008wC90ggPDYnjUZQbWhg/Oh6MDvSLQPaxtn7CPSjISHTlOIHv5Y45rNz
 xRAG1EGTns7ovTgnAbf0Y8Rr7WQOCUVRS5Jh0nTMohO0Cy696dsV5X7p37LXdCWnXRSyFeR9o/pq
 EndfW+UXsM8RjyilXpWqaZ/3G7z+qUvrwH+yFyR67y6KF4jl5bXxNRkRHjwVcfYBUpNL6dcH6Bq5
 KEdfl04umlZEDZ2nEL+NFnNG25spcJ44CBL+fAj0L7klbrsIDpI+rTqOUucg+75lJjwylDBi5Pa0
 z+iByGs0Ws3dHAcZcQAyhuJcEj9ottObN4+3pg==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=episotheque.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=san.con@episotheque.com; 
 bh=g+I5LJEbgxX/U9SR1gRXTRnnVJE=;
 b=A353ZKisyAytX1G9kAvCIvI8pNSNcS4sD3OQEiidk4u5ODXHQLfCaRFyPcTu91PgIaY1ZulojSqI
 tq2F5wOpkYxF05ZV6EL8KRmOWyVWwTolETWwNqiz+VyAZywrm6neXY4Sgv5sjdy5GjwNyiL5/Cce
 0hYwcePn67NtutKrZsdPPUQ2+f7PltIxjkXfgkakwzpoOeVONuZxWFPOkcNcsfbHoGMgJWRm6esH
 UvuDue5WGSrem19a58dqGYSRdH4lBbP7PqvcZO/tAFRByMyhD7cz6X+nHrKM8fVK5OhxkUynUTOz
 1+SPOqKR/BtbyxjdZRwZNE7+iux9p/D3G/w/dg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=episotheque.com
 header.i=san.con@episotheque.com header.a=rsa-sha1 header.s=dkim
 header.b=A353ZKis
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
Reply-To: kolmandonald3@protonmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZyAsCgpJIGtub3cgaXQncyBhbiB1bmNv
bnZlbnRpb25hbCB3YXkgb2YgcmVhY2hpbmcgb3V0IHRvIHlvdSBidXQgaXQncwpmb3IgYSBnb29k
IGNhdXNlLgoKCknigJltIERvbmFsZCwgYSBSZXNlYXJjaCBBc3Npc3RhbnQgb2YgdGhlIFJlc2Vh
cmNoIGFuZCBEZXZlbG9wbWVudApEZXBhcnRtZW50IHdvcmtpbmcgYXQgb25lIG9mIHRoZSBsZWFk
aW5nIEJpbyBQaGFybWFjZXV0aWNhbApDb21wYW5pZXMgaGVyZSBpbiBFbmdsYW5kLiBJJ20gbG9v
a2luZyBmb3IgYSByZWxpYWJsZSBidXNpbmVzcwpwZXJzb24gaW4geW91ciByZWdpb24gdG8gcmVw
cmVzZW50IG15IGNvbXBhbnkgaW4gc291cmNpbmcgc29tZSBvZgpvdXIgYmFzaWMgcmF3IG1hdGVy
aWFsIHVzZWQgaW4gdGhlIG1hbnVmYWN0dXJpbmcgb2YgaGlnaCBxdWFsaXR5CkFudGktVmlyYWwg
VmFjY2luZXMsIENhbmNlciB0cmVhdG1lbnQgYW5kIG90aGVyIGxpZmVzYXZpbmcKUGhhcm1hY2V1
dGljYWwgUHJvZHVjdHMuCgpUaGlzIG1heSBub3QgYmUgeW91ciBhcmVhIG9mIHNwZWNpYWxpemF0
aW9uIGJ1dCBpdCB3aWxsIGJlCmFub3RoZXIgaW5jb21lIGdlbmVyYXRpbmcgYnVzaW5lc3Mgb3V0
IG9mIHlvdXIgc3BlY2lhbHR5LiBUaGlzIGlzCmJlY2F1c2UgT3VyIGNvbXBhbnkgaXMgeWV0IHRv
IGxvY2F0ZSBhbnkgc2VsbGVyIHRvIGJ1eSBmcm9tLApob3dldmVyLCBJIGhhdmUgYmVlbiBhYmxl
IHRvIGRpc2NvdmVyIGEgbG9jYWwgZGVhbGVyIHdobyBjYW4Kc3VwcGx5IHVzIHdpdGggdGhpcyBw
cm9kdWN0LiBIZSBpcyBzZWxsaW5nIGF0IGEgY2hlYXAgcmF0ZSAsCndoaWNoIGlzIGZhciBjaGVh
cGVyIHRoYW4gb3VyIHByZXZpb3VzIHB1cmNoYXNlcy4KCkkgd2lsbCBnaXZlIHlvdSBtb3JlIHNw
ZWNpZmljIHByb2ZpdCBkZXRhaWxzIHdoZW4gSSByZWNlaXZlCmZlZWRiYWNrIGZyb20geW91IGlm
IHlvdSBhcmUgaW50ZXJlc3RlZC4KCgpCZXN0IHJlZ2FyZHMKCkRvbmFsZCBLb2xtYW4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
