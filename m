Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC66EF539
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Apr 2023 15:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75B62405AD;
	Wed, 26 Apr 2023 13:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75B62405AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9uovyahsM7W; Wed, 26 Apr 2023 13:12:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4522E404C4;
	Wed, 26 Apr 2023 13:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4522E404C4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6751BF5B5
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 13:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAB6541B6B
 for <devel@linuxdriverproject.org>; Wed, 26 Apr 2023 13:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAB6541B6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id thN4fJVy8ROR for <devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 13:12:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3662C41B36
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com
 [IPv6:2607:f8b0:4864:20::1043])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3662C41B36
 for <devel@driverdev.osuosl.org>; Wed, 26 Apr 2023 13:12:31 +0000 (UTC)
Received: by mail-pj1-x1043.google.com with SMTP id
 98e67ed59e1d1-2471214cdd3so4939345a91.1
 for <devel@driverdev.osuosl.org>; Wed, 26 Apr 2023 06:12:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682514750; x=1685106750;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U2q37tYLkwIeAQ7ZXXOiSKsROl/9/KjRGrNy3chsxgg=;
 b=aMvhSmvJsU3YU0Te0gQAqtYWJg5YQAmme7j9fc27HmYVb0xYMfWznL9LsVlFHT4q8e
 Tg656HYwKQUbMK3ZjlrWceo3HqWzn6161/tA/gbpLOdvIk+hJW62Bu/mvaumhby6uc+W
 Gq6zYYgTFg3d6Xzt161RcF8JR8rslYyubqBrRt5t7NvhtKNBn9hjsPcUGLtLp7ipRnDa
 a7/AoHZgTXfbVuIQVwV2pPFtGTeThEUcwNqilA4KNuX4ggT7hVYfhVZInFdrQhXhXjo3
 g6YKO4niJtzkCK7qI8mY0zwrVaqb4gxEgV8oO26kmG86srHr4buRCHf1vjPRW/jEmaDD
 jarg==
X-Gm-Message-State: AAQBX9ckDHb1vkD5+SG6+SodzLlmieq4cjvK4VtZhT9eH2e6FfVqgnxD
 On50aaWMu2P7IzfyfoUw+EQkAQbaCHxSJ+iZFPw=
X-Google-Smtp-Source: AKy350bfiyRED0efpPeHpxTJYQfuF2NsjSAmZBsA4rlSO2N69hslHDPXetlg+10AJlaVFLIVZGZ/TL20cxuoy31Tv6c=
X-Received: by 2002:a17:90b:46d3:b0:23d:bbcb:c97f with SMTP id
 jx19-20020a17090b46d300b0023dbbcbc97fmr19960719pjb.1.1682514749992; Wed, 26
 Apr 2023 06:12:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a11:389:b0:474:f989:3ff5 with HTTP; Wed, 26 Apr 2023
 06:12:29 -0700 (PDT)
From: Alexander <info.fasttrackds@gmail.com>
Date: Wed, 26 Apr 2023 20:12:29 +0700
Message-ID: <CAASfO-1NQNy8P+AqwZy9C4kY24w_LHQLSrJ3WJRsKRtzcHgO_Q@mail.gmail.com>
Subject: I hope you are doing great
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682514750; x=1685106750;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=U2q37tYLkwIeAQ7ZXXOiSKsROl/9/KjRGrNy3chsxgg=;
 b=MB2exN24M5C7tomWrVaAFGUiqtA5GaqLlNaxCr2wwCzeDzyeXJKOmT9/tru7DsbLrs
 FTlehpANZwn97VHgGoF5FjcqyJg2AJkI3z6R473/wz0yjZMDEtrjiA+17c/xfaCYKZjN
 7swfH8pxrs1+WCGFhy5Rb08Fs3T+foVEniihb4KPcINBa5huNNbmUB+AyordkYyRkCSB
 t+5pb48YxD+8GSK8DRbo8UOiSLeNkMieNGFHapPfgb2T2ILpWQ/6ZBNlG/utqcqVFs82
 Wjk11lFUD9ueGlDcOBCAkY4thdKorcWtmMEs4M60mCWybFuDfLsMqfJCyqiW3QsAKW41
 T1qQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=MB2exN24
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
Reply-To: a.alessio1976@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UmVjZWlwdCBObzogOTEwMjM1CgpIZWxsbywKCkkgaG9wZSB5b3UgYXJlIGRvaW5nIGdyZWF0LiBN
eSBuYW1lIGlzIERyLiBBbGV4YW5kZXIgQWxlc3Npby4gSSdtIHRoZQphdWRpdG9yIGFuZCBoZWFk
IG9mIHRoZSBjb21wdXRpbmcgZGVwYXJ0bWVudCBvZiBUaGUgSW50ZXJuYXRpb25hbApEZXZlbG9w
bWVudCAoSURBKSBBc3NvY2lhdGlvbi4gQmFzZWQgb24gb3VyIGF1ZGl0IHJlcG9ydCwgSSB2ZXJp
ZmllZAp0aGF0IHlvdSBoYXZlIG5vdCBjbGFpbWVkIHlvdXIgKFBTUCkgaW50ZXJ2ZW50aW9uIGZ1
bmQgZnJvbSBvdXIKb2ZmaWNlLgoKVGhlIChQU1ApIHBheW1lbnQgaXMgYSBzdXBwb3J0IGZ1bmQg
c2l0dWF0ZWQgYXMgYSBQYW5kZW1pYyBTdXBwb3J0ClBheW1lbnQgdG8gaGVscCBzdXBwb3J0IOKA
r3ZpYWJsZSBhbmQgb25nb2luZyBidXNpbmVzc2VzIG9yCm9yZ2FuaXphdGlvbnMgYXMgYSByZXN1
bHQgb2YgdGhlIEVjb25vbWljIGNyaXNlcyByYXZhZ2luZyB0aGUgd29ybGQuClRoZSBJREEgaXMg
YXdhcmUgdGhhdCBCdXNpbmVzc2VzIGFuZCBpbmRpdmlkdWFscyBzdWZmZXJlZCByZXZlbnVlCnNl
dGJhY2tzLiBIb3dldmVyLCB0aGUgSURBIGF3YXJkZWQgc3VwcG9ydCBmdW5kcyB0byBiZW5lZmlj
aWFyaWVzCnRocm91Z2ggbm9taW5hdGlvbnMgYmFzZWQgb24gYW4gYWN0aXZlIGFjY291bnQgdGhh
dCB3YXMgc3VibWl0dGVkIGJ5CmVtYWlsIHNlcnZpY2VzIHByb3ZpZGVycyBhbmQgdGhyb3VnaCB3
aGljaCB5b3VyIGVtYWlsIGFjY291bnQgZW1lcmdlZAphcyBhIGJlbmVmaWNpYXJ5LiBUaGUgV29y
bGQgQmFuayB1bmRlciB0aGUgSURBIHJlc2N1ZSBzY2hlbWUsIGFwcHJvdmVkCnNwZWNpYWwgaW50
ZXJ2ZW50aW9uIGZ1bmRzIGZvciBkaXNidXJzZW1lbnQgdG8gZW50cmVwcmVuZXVycywgc21hbGwK
YW5kIGxhcmdlIGJ1c2luZXNzIG93bmVycyB0byBoZWxwIGluZGl2aWR1YWxzIGJ1aWxkIGJhY2sg
dGhlaXIgZWNvbm9teQpwcmlvciB0byB0aGUgcGFuZGVtaWMgY2hhbGxlbmdlcyB3aGljaCBhZmZl
Y3RlZCBsaXZlcyAmIGJ1c2luZXNzZXMuCgpCZSBpbmZvcm1lZCB0aGF0IHlvdXIgRW1haWwgYWRk
cmVzcyB3YXMgcmVjb21tZW5kZWQgZm9yIHRoaXMKZW1wb3dlcm1lbnQgc3VwcG9ydCBmdW5kaW5n
IGJ5IHlvdXIgRW1haWwgc2VydmljZSBwcm92aWRlcnMgZm9yIGFjdGl2ZQp1c2FnZSBvZiB5b3Vy
IGVtYWlsIGFjY291bnQgYW5kIGJ1c2luZXNzIGRpcmVjdG9yaWVzLgoKVGhlIElEQSBpcyBhbiBp
bnRlcm5hdGlvbmFsIGZpbmFuY2lhbCBpbnN0aXR1dGlvbiB0aGF0IG9mZmVycyBmcmVlCmZpbmFu
Y2lhbCBhc3Npc3RhbmNlIHRvIGVudHJlcHJlbmV1cnMsIGJ1c2luZXNzIG93bmVycywgYW5kCmRl
dmVsb3BlcnMsIEl0cyBhaW0gaXMgdG8gZW5zdXJlIGdsb2JhbCBkZXZlbG9wbWVudCBhbmQgZmlu
YW5jZQpwcm9qZWN0cyB0aGF0IHdpbGwgZGV2ZWxvcCBpbmZyYXN0cnVjdHVyZSBhbmQgaW1wcm92
ZSBoZWFsdGh5IGxpdmluZy4KClRoaXMgaXMgZnJlZSAmIExlZ2FsIChOTyBSRUZVTkQpLgoKVG8g
cmVjZWl2ZSB5b3VyIElEQSBwYXltZW50LCBLaW5kbHkgcmVjb25maXJtIHlvdXIgZGV0YWlscyB0
byBlbmFibGUKb3VyIG9mZmljZSBpbiB5b3VyIGxvY2F0aW9uIHRvIGNvbnRhY3QgeW91IGZvciBw
YXltZW50LgoKRnVsbCBOYW1lOl9fX18KQWdlOl9fX19fX18KU2V4Ol9fX19fX19fCk9jY3VwYXRp
b246X19fCk1vYmlsZTpfX19fX18KCkNvbmdyYXR1bGF0aW9ucyBvbmNlIGFnYWluIQoKSSBiZWxp
ZXZlIHlvdSBoYXZlIHJlYWQgIGFuZCB1bmRlcnN0b29kICB0aGUgZnJhbWV3b3JrIHdoaWNoIGFp
bXMgYXQKZXhwYW5kaW5nIHRoZSBzY2FsZSBvZiBmaW5hbmNpbmcgc3VzdGFpbmFibGUgZGV2ZWxv
cG1lbnQgdG8gZW5hYmxlIHlvdQp0byBzdXBwb3J0IHlvdXIgYnVzaW5lc3MvcHJvamVjdHMuCgoo
SURBKSBQb2xpY2llcyBBbmQgUHJvY2VkdXJlcyBGcmFtZXdvcms6LSBJUyBGUkVFLiBJREEgZnVu
ZGluZyBpcyBmb3IKRGV2ZWxvcG1lbnQvRW1wb3dlcm1lbnQuCgpUaGFua3MgSW4gc2VydmljZSwK
CkRyLiBBbGV4YW5kZXIgQWxlc3NpbwooSC5PLkQtSW50ZXJuYXRpb25hbCBEZXZlbG9wbWVudCBB
c3NvY2lhdGlvbikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
