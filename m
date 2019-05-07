Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C39D167E2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 18:29:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D2F286103;
	Tue,  7 May 2019 16:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxqhy7i_l6Xc; Tue,  7 May 2019 16:29:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02C118610F;
	Tue,  7 May 2019 16:29:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A99F51BF5B4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A633287DB2
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nreu1igrpsOF for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 16:29:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 209C68608F
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 16:29:02 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id h4so3965492wre.7
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 09:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c5+HOOPjtVbBo+8gy8vNmbmMcaHMqGZxYXAym2RjAtc=;
 b=v+8Aj1+Gzh9xAnJJxTKBz5IK7NFM9zFnPBDBO6Jm8AvvbnH1v7/uyOpfFqno1rg2Zy
 fWlzgtf4P3z9BwjWzOPCVXxpfYQLRYcUGluLq7rfauxlh27T1igPdhO2PnmRmDrIzUZb
 33S/UPvcIKxDgySDvLphqkCw3nx66UVkzdh2llSzJaaZDYeQjUp1GcwIRKMf4Fd2qexE
 pdGjzUCJ0cl2KrpuTdYemEjJKYL6rrWeGL4OEu6CfqNZbV6vGok2PFHNRvDxGe1TFozQ
 Qc+ua3Dhgf5+4cL3nsEmG5URl479U6yNuIsdqC58anKp1C+pQdCb7goL/K4F1m96V0sQ
 DdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c5+HOOPjtVbBo+8gy8vNmbmMcaHMqGZxYXAym2RjAtc=;
 b=YtTM9aTi3EzrqoYnsSb6bGjdiNnKFtwUBmqXcHpHtAjnylYNxgC85UfgT7DyxgKKpD
 wWlnXmJtVUnpxHq/alPh6XMyRXGK4Rofglz7lAwk8ajSMl+rzY1TCvr+rkZW8m+mHPmx
 JY41JAXKySjqpdZvAEKwbuYjuUddt+h5jeh4wa13eoo5yGqxchIKsPu+7lN96z0fAUv5
 8vfdGRyzg1xwF9hxGX+0Z8UFTnPl+YL2RuavsE2zIi+xNBX1m23kBYSu92c6xWd5lt4s
 I6zdeQllm4xxNGYfFoujR3A5IirSOZOBVzrt//8ObnU+M5Gu6MWdQW/FzEvEOTK8FUkV
 XAFA==
X-Gm-Message-State: APjAAAUL6NpgBedOlthVqx4oZ2VepqXJHFd9iJF16/WpNSBvBBdfdVxE
 MgwBk19KK+rUytEG3Ze1DT2CLNKYciyqI8VAoFZvFw==
X-Google-Smtp-Source: APXvYqym1S8ixk/XT+rtdrTBe5tWrchiuDfbT6Q3mS29Rpb1RGpNAAYDcvRlOaaUxs5q8h8UIab6C7KWUWz1lN8rgvo=
X-Received: by 2002:a5d:60cd:: with SMTP id x13mr3984822wrt.291.1557246540040; 
 Tue, 07 May 2019 09:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
In-Reply-To: <20190507105826.oi6vah6x5brt257h@brauner.io>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 7 May 2019 09:28:47 -0700
Message-ID: <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
To: Christian Brauner <christian@brauner.io>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Sultan Alsawaf <sultan@kerneltoast.com>, Andy Lutomirski <luto@amacapital.net>,
 Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogQ2hyaXN0aWFuIEJyYXVuZXIgPGNocmlzdGlhbkBicmF1bmVyLmlvPgpEYXRlOiBUdWUs
IE1heSA3LCAyMDE5IGF0IDM6NTggQU0KVG86IFN1bHRhbiBBbHNhd2FmCkNjOiBHcmVnIEtyb2Fo
LUhhcnRtYW4sIG9wZW4gbGlzdDpBTkRST0lEIERSSVZFUlMsIERhbmllbCBDb2xhc2Npb25lLApU
b2RkIEtqb3MsIEtlZXMgQ29vaywgUGV0ZXIgWmlqbHN0cmEsIE1hcnRpam4gQ29lbmVuLCBMS01M
LCBUaW0KTXVycmF5LCBNaWNoYWwgSG9ja28sIFN1cmVuIEJhZ2hkYXNhcnlhbiwgbGludXgtbW0s
IEFydmUgSGrDuG5uZXbDpWcsCkluZ28gTW9sbmFyLCBTdGV2ZW4gUm9zdGVkdCwgT2xlZyBOZXN0
ZXJvdiwgSm9lbCBGZXJuYW5kZXMsIEFuZHkKTHV0b21pcnNraSwga2VybmVsLXRlYW0KCj4gT24g
VHVlLCBNYXkgMDcsIDIwMTkgYXQgMDE6MTI6MzZBTSAtMDcwMCwgU3VsdGFuIEFsc2F3YWYgd3Jv
dGU6Cj4gPiBPbiBUdWUsIE1heSAwNywgMjAxOSBhdCAwOTo0MzozNEFNICswMjAwLCBHcmVnIEty
b2FoLUhhcnRtYW4gd3JvdGU6Cj4gPiA+IEdpdmVuIHRoYXQgYW55ICJuZXciIGFuZHJvaWQgZGV2
aWNlIHRoYXQgZ2V0cyBzaGlwcGVkICJzb29uIiBzaG91bGQgYmUKPiA+ID4gdXNpbmcgNC45Lnkg
b3IgbmV3ZXIsIGlzIHRoaXMgYSByZWFsIGlzc3VlPwo+ID4KPiA+IEl0J3MgY2VydGFpbmx5IGEg
cmVhbCBpc3N1ZSBmb3IgdGhvc2Ugd2hvIGNhbid0IGJ1eSBicmFuZCBuZXcgQW5kcm9pZCBkZXZp
Y2VzCj4gPiB3aXRob3V0IHNvZnR3YXJlIGJ1Z3MgZXZlcnkgc2l4IG1vbnRocyA6KQo+ID4KCkhp
IFN1bHRhbiwKTG9va3MgbGlrZSB5b3UgYXJlIHBvc3RpbmcgdGhpcyBwYXRjaCBmb3IgZGV2aWNl
cyB0aGF0IGRvIG5vdCB1c2UKdXNlcnNwYWNlIExNS0Qgc29sdXRpb24gZHVlIHRvIHRoZW0gdXNp
bmcgb2xkZXIga2VybmVscyBvciBkdWUgdG8KdGhlaXIgdmVuZG9ycyBzdGlja2luZyB0byBpbi1r
ZXJuZWwgc29sdXRpb24uIElmIHNvLCBJIHNlZSBjb3VwbGUKbG9naXN0aWNhbCBpc3N1ZXMgd2l0
aCB0aGlzIHBhdGNoLiBJIGRvbid0IHNlZSBpdCBiZWluZyBhZG9wdGVkIGluCnVwc3RyZWFtIGtl
cm5lbCA1Lnggc2luY2UgaXQgcmUtaW1wbGVtZW50cyBhIGRlcHJlY2F0ZWQgbWVjaGFuaXNtIGV2
ZW4KdGhvdWdoIHZlbmRvcnMgc3RpbGwgdXNlIGl0LiBWZW5kb3JzIG9uIHRoZSBvdGhlciBoYW5k
LCB3aWxsIG5vdCBhZG9wdAppdCB1bnRpbCB5b3Ugc2hvdyBldmlkZW5jZSB0aGF0IGl0IHdvcmtz
IHdheSBiZXR0ZXIgdGhhbiB3aGF0Cmxvd21lbW9yeWtpbGxlZCBkcml2ZXIgZG9lcyBub3cuIFlv
dSB3b3VsZCBoYXZlIHRvIHByb3ZpZGUgbWVhc3VyYWJsZQpkYXRhIGFuZCBleHBsYWluIHlvdXIg
dGVzdHMgYmVmb3JlIHRoZXkgd291bGQgY29uc2lkZXIgc3BlbmRpbmcgdGltZQpvbiB0aGlzLgpP
biB0aGUgaW1wbGVtZW50YXRpb24gc2lkZSBJJ20gbm90IGNvbnZpbmNlZCBhdCBhbGwgdGhhdCB0
aGlzIHdvdWxkCndvcmsgYmV0dGVyIG9uIGFsbCBkZXZpY2VzIGFuZCBpbiBhbGwgY2lyY3Vtc3Rh
bmNlcy4gV2UgaGFkIGNhc2VzIHdoZW4KYSBuZXcgbWVjaGFuaXNtIHdvdWxkIHNob3cgdmVyeSBn
b29kIHJlc3VsdHMgdW50aWwgb25lIHVzZWNhc2UKY29tcGxldGVseSBicm9rZSBpdC4gQnVsayBr
aWxsaW5nIG9mIHByb2Nlc3NlcyB0aGF0IHlvdSBhcmUgZG9pbmcgaW4KeW91ciBwYXRjaCB3YXMg
YSB2ZXJ5IGdvb2QgZXhhbXBsZSBvZiBzdWNoIGEgZGVjaXNpb24gd2hpY2ggbGF0ZXIgb24Kd2Ug
aGFkIHRvIHJldGhpbmsuIFRoYXQncyB3aHkgYmFraW5nIHRoZXNlIHBvbGljaWVzIGludG8ga2Vy
bmVsIGlzCnZlcnkgcHJvYmxlbWF0aWMuIEFub3RoZXIgcHJvYmxlbSBJIHNlZSB3aXRoIHRoZSBp
bXBsZW1lbnRhdGlvbiB0aGF0Cml0IHRpZXMgcHJvY2VzcyBraWxsaW5nIHdpdGggdGhlIHJlY2xh
aW0gc2NhbiBkZXB0aC4gSXQncyB2ZXJ5IHNpbWlsYXIKdG8gaG93IHZtcHJlc3N1cmUgd29ya3Mg
YW5kIHZtcHJlc3N1cmUgaW4gbXkgZXhwZXJpZW5jZSBpcyB2ZXJ5CnVucHJlZGljdGFibGUuCgo+
ID4gPiBBbmQgaWYgaXQgaXMsIEknbSBzdXJlIHRoYXQgYXNraW5nIGZvciB0aG9zZSBwYXRjaGVz
IHRvIGJlIGJhY2twb3J0ZWQgdG8KPiA+ID4gNC40Lnkgd291bGQgYmUganVzdCBmaW5lLCBoYXZl
IHlvdSBhc2tlZD8KPiA+ID4KPiA+ID4gTm90ZSB0aGF0IEkga25vdyBvZiBBbmRyb2lkIEdvIGRl
dmljZXMsIHJ1bm5pbmcgMy4xOC55IGtlcm5lbHMsIGRvIE5PVAo+ID4gPiB1c2UgdGhlIGluLWtl
cm5lbCBtZW1vcnkga2lsbGVyLCBidXQgaW5zdGVhZCB1c2UgdGhlIHVzZXJzcGFjZSBzb2x1dGlv
bgo+ID4gPiB0b2RheS4gIFNvIHRyeWluZyB0byBnZXQgYW5vdGhlciBpbi1rZXJuZWwgbWVtb3J5
IGtpbGxlciBzb2x1dGlvbiBhZGRlZAo+ID4gPiBhbnl3aGVyZSBzZWVtcyBxdWl0ZSBvZGQuCj4g
Pgo+ID4gSXQncyBldmVuIG1vcmUgb2RkIHRoYXQgYWx0aG91Z2ggYSB1c2Vyc3BhY2Ugc29sdXRp
b24gaXMgdG91dGVkIGFzIHRoZSBwcm9wZXIKPiA+IHdheSB0byBnbyBvbiBMS01MLCBhbG1vc3Qg
bm8gQW5kcm9pZCBPRU1zIGFyZSB1c2luZyBpdCwgYW5kIGV2ZW4gaW4gdGhhdCBjb21taXQKPgo+
IFRoYXQncyBwcm9iYWJseSBiZWNhdXNlIHdpdGhvdXQgcHJvcGVyIGtlcm5lbCBjaGFuZ2VzIHRo
aXMgaXMgcmF0aGVyCj4gdHJpY2t5IHRvIHVzZSBzYWZlbHkgKHNlZSBiZWxvdykuCj4KPiA+IEkg
bGlua2VkIGluIHRoZSBwcmV2aW91cyBtZXNzYWdlLCBHb29nbGUgbWFkZSBhIHJhdGhlciBsYXJn
ZSBzZXQgb2YKPiA+IG1vZGlmaWNhdGlvbnMgdG8gdGhlIHN1cHBvc2VkbHktZGVmdW5jdCBsb3dt
ZW1vcnlraWxsZXIuYyBub3Qgb25lIG1vbnRoIGFnby4KPiA+IFdoYXQncyBnb2luZyBvbj8KCklm
IHlvdSBsb29rIGludG8gdGhhdCBjb21taXQsIGl0IGFkZHMgYWJpbGl0eSB0byByZXBvcnQga2ls
bCBzdGF0cy4gSWYKdGhhdCB3YXMgYSBjaGFuZ2UgaW4gaG93IHRoYXQgZHJpdmVyIHdvcmtzIGl0
IHdvdWxkIGJlIHJlamVjdGVkLgoKPiA+Cj4gPiBRdWFsY29tbSBzdGlsbCB1c2VzIGxvd21lbW9y
eWtpbGxlci5jIFsxXSBvbiB0aGUgU25hcGRyYWdvbiA4NDUuIElmIFBTSSB3ZXJlCj4gPiBiYWNr
cG9ydGVkIHRvIDQuNCwgb3IgZXZlbiAzLjE4LCB3b3VsZCBpdCByZWFsbHkgYmUgdXNlZD8gSSBk
b24ndCByZWFsbHkKPiA+IHVuZGVyc3RhbmQgdGhlIGF2ZXJzaW9uIHRvIGFuIGluLWtlcm5lbCBt
ZW1vcnkga2lsbGVyIG9uIExLTUwgZGVzcGl0ZSB0aGUgcmVzdAo+ID4gb2YgdGhlIGluZHVzdHJ5
J3MgYXR0cmFjdGlvbiB0byBpdC4gUGVyaGFwcyB0aGVyZSdzIHNvbWUgaW5oZXJlbnRseSBncmVh
dCBjb3N0Cj4gPiBpbiB1c2luZyB0aGUgdXNlcnNwYWNlIHNvbHV0aW9uIHRoYXQgSSdtIHVuYXdh
cmUgb2Y/CgpWZW5kb3JzIGFyZSBjYXV0aW91cyBhYm91dCBhZG9wdGluZyB1c2Vyc3BhY2Ugc29s
dXRpb24gYW5kIGl0IGlzIGEKcHJvY2VzcyB0byBhZGRyZXNzIGFsbCBjb25jZXJucyBidXQgd2Ug
YXJlIGdldHRpbmcgdGhlcmUuCgo+ID4gUmVnYXJkbGVzcywgZXZlbiBpZiBQU0kgd2VyZSBiYWNr
cG9ydGVkLCBhIGZ1bGwtZmxlZGdlZCBMTUtEIHVzaW5nIGl0IGhhcyB5ZXQgdG8KPiA+IGJlIG1h
ZGUsIHNvIGl0IHdvdWxkbid0IGJlIG9mIG11Y2ggdXNlIG5vdy4KPgo+IFRoaXMgaXMgd29yayB0
aGF0IGlzIG9uZ29pbmcgYW5kIHJlcXVpcmVzIGtlcm5lbCBjaGFuZ2VzIHRvIG1ha2UgaXQKPiBm
ZWFzaWJsZS4gT25lIG9mIHRoZSB0aGluZ3MgdGhhdCBJIGhhdmUgYmVlbiB3b3JraW5nIG9uIGZv
ciBxdWl0ZSBhCj4gd2hpbGUgaXMgdGhlIHdob2xlIGZpbGUgZGVzY3JpcHRvciBmb3IgcHJvY2Vz
c2VzIHRoaW5nIHRoYXQgaXMgaW1wb3J0YW50Cj4gZm9yIExNS0QgKEV2ZW4gdGhvdWdoIEkgbmV2
ZXIgdGhvdWdodCBhYm91dCB0aGlzIHVzZS1jYXNlIHdoZW4gSSBzdGFydGVkCj4gcGl0Y2hpbmcg
dGhpcy4pLiBKb2VsIGFuZCBEYW5pZWwgaGF2ZSBqb2luZWQgaW4gYW5kIGFyZSB3b3JraW5nIG9u
Cj4gbWFraW5nIExNS0QgcG9zc2libGUuCj4gV2hhdCBJIGZpbmQgb2RkIGlzIHRoYXQgZXZlcnkg
Y291cGxlIG9mIHdlZWtzIGRpZmZlcmVudCBzb2x1dGlvbnMgdG8gdGhlCj4gbG93IG1lbW9yeSBw
cm9ibGVtIGFyZSBwaXRjaGVkLiBUaGVyZSBpcyBzaW1wbGVfbGttbCwgdGhlcmUgaXMgTE1LRCwg
YW5kCj4gdGhlcmUgd2FzIGEgcGF0Y2hzZXQgdGhhdCB3YW50ZWQgdG8gc3BlZWQgdXAgbWVtb3J5
IHJlY2xhaW0gYXQgcHJvY2Vzcwo+IGtpbGwtdGltZSBieSBhZGRpbmcgYSBuZXcgZmxhZyB0byB0
aGUgbmV3IHBpZGZkX3NlbmRfc2lnbmFsKCkgc3lzY2FsbC4KPiBUaGF0IGFsbCBzZWVtcyAtIHRo
b3VnaCByZWxhdGVkIC0gcmF0aGVyIHVuY29vcmRpbmF0ZWQuCgpJJ20gbm90IHN1cmUgd2h5IHBp
ZGZkX3dhaXQgYW5kIGV4cGVkaXRlZCByZWNsYWltIGlzIHNlZW4gYXMKdW5jb29yZGluYXRlZCBl
ZmZvcnQuIEFsbCBvZiB0aGVtIGFyZSBkb25lIHRvIGltcHJvdmUgdXNlcnNwYWNlIExNS0QuCgo+
IE5vdyBncmFudGVkLAo+IGNvb3JkaW5hdGVkIGlzIHVzdWFsbHkgbm90IGhvdyBrZXJuZWwgZGV2
ZWxvcG1lbnQgbmVjZXNzYXJpbHkgd29ya3MgYnV0Cj4gaXQgd291bGQgcHJvYmFibHkgYmUgZ29v
ZCB0byBoYXZlIHNvbWUgc29ydCBvZiBkaXJlY3Rpb24gYW5kIGZyb20gd2hhdCBJCj4gaGF2ZSBz
ZWVuIExNS0Qgc2VlbXMgdG8gYmUgdGhlIG1vc3QgY29vcmRpbmF0ZWQgZWZmb3J0LiBCdXQgdGhh
dCBtaWdodAo+IGp1c3QgYmUgbXkgaW1wcmVzc2lvbi4KPgo+IENocmlzdGlhbgoKVGhhbmtzLApT
dXJlbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
